import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _email = await secureStorage.getString('ff_email') ?? _email;
    });
    await _safeInitAsync(() async {
      _authorizationToken =
          await secureStorage.getString('ff_authorizationToken') ??
              _authorizationToken;
    });
    await _safeInitAsync(() async {
      _refreshToken =
          await secureStorage.getString('ff_refreshToken') ?? _refreshToken;
    });
    await _safeInitAsync(() async {
      _householdIds =
          await secureStorage.getStringList('ff_householdIds') ?? _householdIds;
    });
    await _safeInitAsync(() async {
      _defaultHouseholdId =
          await secureStorage.getString('ff_defaultHouseholdId') ??
              _defaultHouseholdId;
    });
    await _safeInitAsync(() async {
      _defaultCurrency = await secureStorage.getString('ff_defaultCurrency') ??
          _defaultCurrency;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    secureStorage.setString('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  String _authorizationToken = '';
  String get authorizationToken => _authorizationToken;
  set authorizationToken(String value) {
    _authorizationToken = value;
    secureStorage.setString('ff_authorizationToken', value);
  }

  void deleteAuthorizationToken() {
    secureStorage.delete(key: 'ff_authorizationToken');
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
    secureStorage.setString('ff_refreshToken', value);
  }

  void deleteRefreshToken() {
    secureStorage.delete(key: 'ff_refreshToken');
  }

  List<String> _householdIds = [];
  List<String> get householdIds => _householdIds;
  set householdIds(List<String> value) {
    _householdIds = value;
    secureStorage.setStringList('ff_householdIds', value);
  }

  void deleteHouseholdIds() {
    secureStorage.delete(key: 'ff_householdIds');
  }

  void addToHouseholdIds(String value) {
    _householdIds.add(value);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void removeFromHouseholdIds(String value) {
    _householdIds.remove(value);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void removeAtIndexFromHouseholdIds(int index) {
    _householdIds.removeAt(index);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void updateHouseholdIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _householdIds[index] = updateFn(_householdIds[index]);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void insertAtIndexInHouseholdIds(int index, String value) {
    _householdIds.insert(index, value);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  String _defaultHouseholdId = '';
  String get defaultHouseholdId => _defaultHouseholdId;
  set defaultHouseholdId(String value) {
    _defaultHouseholdId = value;
    secureStorage.setString('ff_defaultHouseholdId', value);
  }

  void deleteDefaultHouseholdId() {
    secureStorage.delete(key: 'ff_defaultHouseholdId');
  }

  String _defaultCurrency = '';
  String get defaultCurrency => _defaultCurrency;
  set defaultCurrency(String value) {
    _defaultCurrency = value;
    secureStorage.setString('ff_defaultCurrency', value);
  }

  void deleteDefaultCurrency() {
    secureStorage.delete(key: 'ff_defaultCurrency');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}

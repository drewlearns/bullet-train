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
      _householdIds =
          await secureStorage.getStringList('ff_householdIds') ?? _householdIds;
    });
    await _safeInitAsync(() async {
      _defaultHouseholdId =
          await secureStorage.getString('ff_defaultHouseholdId') ??
              _defaultHouseholdId;
    });
    await _safeInitAsync(() async {
      _confirmedEmail =
          await secureStorage.getBool('ff_confirmedEmail') ?? _confirmedEmail;
    });
    await _safeInitAsync(() async {
      _subscriptionEndDate =
          await secureStorage.getString('ff_subscriptionEndDate') ??
              _subscriptionEndDate;
    });
    await _safeInitAsync(() async {
      _subscriptionStatus =
          await secureStorage.getString('ff_subscriptionStatus') ??
              _subscriptionStatus;
    });
    await _safeInitAsync(() async {
      _purchaseToken =
          await secureStorage.getString('ff_purchaseToken') ?? _purchaseToken;
    });
    await _safeInitAsync(() async {
      _receiptData =
          await secureStorage.getString('ff_receiptData') ?? _receiptData;
    });
    await _safeInitAsync(() async {
      _lightmode = await secureStorage.getBool('ff_lightmode') ?? _lightmode;
    });
    await _safeInitAsync(() async {
      _expiresAt = await secureStorage.read(key: 'ff_expiresAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_expiresAt'))!)
          : _expiresAt;
    });
    await _safeInitAsync(() async {
      _phoneNumber =
          await secureStorage.getString('ff_phoneNumber') ?? _phoneNumber;
    });
    await _safeInitAsync(() async {
      _firstName = await secureStorage.getString('ff_firstName') ?? _firstName;
    });
    await _safeInitAsync(() async {
      _lastName = await secureStorage.getString('ff_lastName') ?? _lastName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _email = 'email@example.com';
  String get email => _email;
  set email(String value) {
    _email = value;
    secureStorage.setString('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
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
    householdIds.add(value);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void removeFromHouseholdIds(String value) {
    householdIds.remove(value);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void removeAtIndexFromHouseholdIds(int index) {
    householdIds.removeAt(index);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void updateHouseholdIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    householdIds[index] = updateFn(_householdIds[index]);
    secureStorage.setStringList('ff_householdIds', _householdIds);
  }

  void insertAtIndexInHouseholdIds(int index, String value) {
    householdIds.insert(index, value);
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

  bool _confirmedEmail = false;
  bool get confirmedEmail => _confirmedEmail;
  set confirmedEmail(bool value) {
    _confirmedEmail = value;
    secureStorage.setBool('ff_confirmedEmail', value);
  }

  void deleteConfirmedEmail() {
    secureStorage.delete(key: 'ff_confirmedEmail');
  }

  String _subscriptionEndDate = '';
  String get subscriptionEndDate => _subscriptionEndDate;
  set subscriptionEndDate(String value) {
    _subscriptionEndDate = value;
    secureStorage.setString('ff_subscriptionEndDate', value);
  }

  void deleteSubscriptionEndDate() {
    secureStorage.delete(key: 'ff_subscriptionEndDate');
  }

  String _subscriptionStatus = '';
  String get subscriptionStatus => _subscriptionStatus;
  set subscriptionStatus(String value) {
    _subscriptionStatus = value;
    secureStorage.setString('ff_subscriptionStatus', value);
  }

  void deleteSubscriptionStatus() {
    secureStorage.delete(key: 'ff_subscriptionStatus');
  }

  String _purchaseToken = '';
  String get purchaseToken => _purchaseToken;
  set purchaseToken(String value) {
    _purchaseToken = value;
    secureStorage.setString('ff_purchaseToken', value);
  }

  void deletePurchaseToken() {
    secureStorage.delete(key: 'ff_purchaseToken');
  }

  String _receiptData = '';
  String get receiptData => _receiptData;
  set receiptData(String value) {
    _receiptData = value;
    secureStorage.setString('ff_receiptData', value);
  }

  void deleteReceiptData() {
    secureStorage.delete(key: 'ff_receiptData');
  }

  bool _lightmode = false;
  bool get lightmode => _lightmode;
  set lightmode(bool value) {
    _lightmode = value;
    secureStorage.setBool('ff_lightmode', value);
  }

  void deleteLightmode() {
    secureStorage.delete(key: 'ff_lightmode');
  }

  DateTime? _expiresAt = DateTime.fromMillisecondsSinceEpoch(1717571100000);
  DateTime? get expiresAt => _expiresAt;
  set expiresAt(DateTime? value) {
    _expiresAt = value;
    value != null
        ? secureStorage.setInt('ff_expiresAt', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_expiresAt');
  }

  void deleteExpiresAt() {
    secureStorage.delete(key: 'ff_expiresAt');
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
    secureStorage.setString('ff_phoneNumber', value);
  }

  void deletePhoneNumber() {
    secureStorage.delete(key: 'ff_phoneNumber');
  }

  int _expiresIn = 3600;
  int get expiresIn => _expiresIn;
  set expiresIn(int value) {
    _expiresIn = value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
    secureStorage.setString('ff_firstName', value);
  }

  void deleteFirstName() {
    secureStorage.delete(key: 'ff_firstName');
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
    secureStorage.setString('ff_lastName', value);
  }

  void deleteLastName() {
    secureStorage.delete(key: 'ff_lastName');
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

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    List<String>? ledgerDescription,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _ledgerDescription = ledgerDescription;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;
  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;
  bool hasCreateTime() => _createTime != null;

  // "ledgerDescription" field.
  List<String>? _ledgerDescription;
  List<String> get ledgerDescription => _ledgerDescription ?? const [];
  set ledgerDescription(List<String>? val) => _ledgerDescription = val;
  void updateLedgerDescription(Function(List<String>) updateFn) =>
      updateFn(_ledgerDescription ??= []);
  bool hasLedgerDescription() => _ledgerDescription != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        ledgerDescription: getDataList(data['ledgerDescription']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'ledgerDescription': _ledgerDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'ledgerDescription': serializeParam(
          _ledgerDescription,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        ledgerDescription: deserializeParam<String>(
          data['ledgerDescription'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        listEquality.equals(ledgerDescription, other.ledgerDescription);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uid, displayName, createTime, ledgerDescription]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
    );

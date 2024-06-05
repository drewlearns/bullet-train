// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? accessToken,
    int? expiresIn,
    String? idToken,
    String? refreshToken,
    String? tokenType,
  })  : _accessToken = accessToken,
        _expiresIn = expiresIn,
        _idToken = idToken,
        _refreshToken = refreshToken,
        _tokenType = tokenType;

  // "AccessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;
  bool hasAccessToken() => _accessToken != null;

  // "ExpiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 3600;
  set expiresIn(int? val) => _expiresIn = val;
  void incrementExpiresIn(int amount) => _expiresIn = expiresIn + amount;
  bool hasExpiresIn() => _expiresIn != null;

  // "IdToken" field.
  String? _idToken;
  String get idToken => _idToken ?? '';
  set idToken(String? val) => _idToken = val;
  bool hasIdToken() => _idToken != null;

  // "RefreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "TokenType" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? 'Bearer';
  set tokenType(String? val) => _tokenType = val;
  bool hasTokenType() => _tokenType != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        accessToken: data['AccessToken'] as String?,
        expiresIn: castToType<int>(data['ExpiresIn']),
        idToken: data['IdToken'] as String?,
        refreshToken: data['RefreshToken'] as String?,
        tokenType: data['TokenType'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'AccessToken': _accessToken,
        'ExpiresIn': _expiresIn,
        'IdToken': _idToken,
        'RefreshToken': _refreshToken,
        'TokenType': _tokenType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'ExpiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
        'IdToken': serializeParam(
          _idToken,
          ParamType.String,
        ),
        'RefreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'TokenType': serializeParam(
          _tokenType,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        accessToken: deserializeParam(
          data['AccessToken'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['ExpiresIn'],
          ParamType.int,
          false,
        ),
        idToken: deserializeParam(
          data['IdToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['RefreshToken'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['TokenType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        idToken == other.idToken &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accessToken, expiresIn, idToken, refreshToken, tokenType]);
}

UserStruct createUserStruct({
  String? accessToken,
  int? expiresIn,
  String? idToken,
  String? refreshToken,
  String? tokenType,
}) =>
    UserStruct(
      accessToken: accessToken,
      expiresIn: expiresIn,
      idToken: idToken,
      refreshToken: refreshToken,
      tokenType: tokenType,
    );

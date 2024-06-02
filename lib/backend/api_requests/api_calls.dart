import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TPPB Group Code

class TppbGroup {
  static String getBaseUrl() => 'https://api.dev.thepurplepiggybank.com';
  static Map<String, String> headers = {
    'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
  };
  static AddUserCall addUserCall = AddUserCall();
  static ConfirmSignupCall confirmSignupCall = ConfirmSignupCall();
  static LoginCall loginCall = LoginCall();
  static GetUserCall getUserCall = GetUserCall();
  static EditUserCall editUserCall = EditUserCall();
  static DeleteUserJsCall deleteUserJsCall = DeleteUserJsCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static RevokeTokenCall revokeTokenCall = RevokeTokenCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static ConfirmPasswordResetCodeCall confirmPasswordResetCodeCall =
      ConfirmPasswordResetCodeCall();
  static AddHouseholdCall addHouseholdCall = AddHouseholdCall();
  static AddInviteCall addInviteCall = AddInviteCall();
  static AcceptInviteCall acceptInviteCall = AcceptInviteCall();
  static DeleteMemberFromHouseholdCall deleteMemberFromHouseholdCall =
      DeleteMemberFromHouseholdCall();
  static EditHouseholdCall editHouseholdCall = EditHouseholdCall();
  static GetHouseholdMembersCall getHouseholdMembersCall =
      GetHouseholdMembersCall();
  static DeleteHouseholdCall deleteHouseholdCall = DeleteHouseholdCall();
  static GetHouseholdCall getHouseholdCall = GetHouseholdCall();
  static GetHouseholdByIdCall getHouseholdByIdCall = GetHouseholdByIdCall();
  static AddPaymentSourceCall addPaymentSourceCall = AddPaymentSourceCall();
  static DeletePaymentSourceCall deletePaymentSourceCall =
      DeletePaymentSourceCall();
  static EditPaymentSourceCall editPaymentSourceCall = EditPaymentSourceCall();
  static GetPaymentSourceCall getPaymentSourceCall = GetPaymentSourceCall();
  static AddBillCall addBillCall = AddBillCall();
  static GetBillPasswordCall getBillPasswordCall = GetBillPasswordCall();
  static DeleteBillCall deleteBillCall = DeleteBillCall();
  static GetFilePathCall getFilePathCall = GetFilePathCall();
  static EditBillCall editBillCall = EditBillCall();
  static GetBillsCall getBillsCall = GetBillsCall();
  static AddNotificationCall addNotificationCall = AddNotificationCall();
  static EditNotificationCall editNotificationCall = EditNotificationCall();
  static DeleteNotificationCall deleteNotificationCall =
      DeleteNotificationCall();
  static GetNotificationsCall getNotificationsCall = GetNotificationsCall();
  static AddTransactionCall addTransactionCall = AddTransactionCall();
  static GetTransactionCall getTransactionCall = GetTransactionCall();
  static GetTransactionByMonthCall getTransactionByMonthCall =
      GetTransactionByMonthCall();
  static SearchTransactionsCall searchTransactionsCall =
      SearchTransactionsCall();
  static GetTransactionsByPaymentSourceCall getTransactionsByPaymentSourceCall =
      GetTransactionsByPaymentSourceCall();
  static GetAuditTrailCall getAuditTrailCall = GetAuditTrailCall();
  static GetSecurityLogCall getSecurityLogCall = GetSecurityLogCall();
  static SetDefaultPaymentSourceCall setDefaultPaymentSourceCall =
      SetDefaultPaymentSourceCall();
  static GetDefaultPaymentSourcePreferenceCall
      getDefaultPaymentSourcePreferenceCall =
      GetDefaultPaymentSourcePreferenceCall();
  static EditDefaultPaymentSourceCall editDefaultPaymentSourceCall =
      EditDefaultPaymentSourceCall();
  static SetCurrencyPreferenceCall setCurrencyPreferenceCall =
      SetCurrencyPreferenceCall();
  static GetCurrencyPreferenceCall getCurrencyPreferenceCall =
      GetCurrencyPreferenceCall();
  static EditCurrencyPreferenceCall editCurrencyPreferenceCall =
      EditCurrencyPreferenceCall();
  static SetThresholdCall setThresholdCall = SetThresholdCall();
  static EditThresholdCall editThresholdCall = EditThresholdCall();
  static GetThresholdBreakersCall getThresholdBreakersCall =
      GetThresholdBreakersCall();
  static GetThresholdPreferenceCall getThresholdPreferenceCall =
      GetThresholdPreferenceCall();
  static AddIncomeCall addIncomeCall = AddIncomeCall();
  static EditIncomeJsCall editIncomeJsCall = EditIncomeJsCall();
  static GetIncomesCall getIncomesCall = GetIncomesCall();
  static GetIncomeCall getIncomeCall = GetIncomeCall();
  static DeleteIncomeJsCall deleteIncomeJsCall = DeleteIncomeJsCall();
  static GetRunningTotalCall getRunningTotalCall = GetRunningTotalCall();
  static GetRunningTotalsByDateCall getRunningTotalsByDateCall =
      GetRunningTotalsByDateCall();
  static GetCategoriesCall getCategoriesCall = GetCategoriesCall();
  static ExportLedgerToCsvCall exportLedgerToCsvCall = ExportLedgerToCsvCall();
  static ExportLedgerToQBOCall exportLedgerToQBOCall = ExportLedgerToQBOCall();
  static GetLedgerCall getLedgerCall = GetLedgerCall();
}

class AddUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? password = '',
    bool? mailOptIn,
    String? phoneNumber = '',
    String? firstName = '',
    String? lastName = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$email",
  "email": "$email",
  "password": "$password",
  "mailOptIn": "$mailOptIn",
  "phoneNumber": "$phoneNumber",
  "firstName": "$firstName",
  "lastName": "$lastName",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addUser',
      apiUrl: '$baseUrl/addUser',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.uuid''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phoneNumber''',
      ));
  String? signupDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.signupDate''',
      ));
  bool? mailOptin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.mailOptIn''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.updatedAt''',
      ));
  bool? confirmedEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.confirmedEmail''',
      ));
  String? subscriptionEndDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionEndDate''',
      ));
  String? subscriptionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionStatus''',
      ));
  dynamic details(dynamic response) => getJsonField(
        response,
        r'''$.details''',
      );
  dynamic codeDeliveryDetails(dynamic response) => getJsonField(
        response,
        r'''$.details.CodeDeliveryDetails''',
      );
  String? codeDeliveryDetailsAttribureName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.details.CodeDeliveryDetails.AttributeName''',
      ));
  String? codeDeliveryDetailsDeliveryMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.details.CodeDeliveryDetails.DeliveryMedium''',
      ));
  String? codeDeliveryDetailsDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.details.CodeDeliveryDetails.Destination''',
      ));
  bool? userConfirmed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.details.UserConfirmed''',
      ));
  String? userSub(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.details.UserSub''',
      ));
  String? errorDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorDetails''',
      ));
}

class ConfirmSignupCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? confirmationCode = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "confirmationCode": "$confirmationCode",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmSignup',
      apiUrl: '$baseUrl/confirmSignup',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? errorDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorDetails''',
      ));
  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.uuid''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phoneNumber''',
      ));
  String? signupDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.signupDate''',
      ));
  bool? mailOptin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.mailOptIn''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.updatedAt''',
      ));
  bool? confirmedEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.confirmedEmail''',
      ));
  String? subscriptionEndDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionEndDate''',
      ));
  String? subscriptionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionStatus''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? ipAddress = '',
    String? deviceDetails = '',
    String? locationDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails",
  "locationDetails": "$locationDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? errorDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorDetails''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokens.AccessToken''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tokens.ExpiresIn''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokens.RefreshToken''',
      ));
  String? idToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokens.IdToken''',
      ));
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl: '$baseUrl/getUser',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uuid''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phoneNumber''',
      ));
  String? signupDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.signupDate''',
      ));
  bool? mailOptIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.mailOptIn''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  bool? confirmedEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.confirmedEmail''',
      ));
  String? subscriptionEndDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.subscriptionEndDate''',
      ));
  String? subscriptionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.subscriptionStatus''',
      ));
  List<String>? householdIds(dynamic response) => (getJsonField(
        response,
        r'''$.householdMembers[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class EditUserCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? email = '',
    String? newUsername = '',
    String? phoneNumber = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "email": "$email",
  "newUsername": "$newUsername",
  "phoneNumber": "$phoneNumber",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editUser',
      apiUrl: '$baseUrl/editUser',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? errorDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorDetails''',
      ));
  String? newEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.uuid''',
      ));
  String? oldUsername(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  String? oldEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? newUserPhoneNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.phoneNumber''',
      ));
  String? signupDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.signupDate''',
      ));
  bool? mailOptin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.mailOptIn''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.updatedAt''',
      ));
  bool? confirmedEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.confirmedEmail''',
      ));
  String? subscriptionEndDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionEndDate''',
      ));
  String? subscriptionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionStatus''',
      ));
}

class DeleteUserJsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser.js',
      apiUrl: '$baseUrl/deleteUser',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshTokenCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'refreshToken',
      apiUrl: '$baseUrl/refreshToken',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RevokeTokenCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'revokeToken',
      apiUrl: '$baseUrl/revokeToken',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? ipAddress = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$email",
  "ipAddress": "$ipAddress",
  "deviceDetails": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPassword',
      apiUrl: '$baseUrl/forgotPassword',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? errorDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorDetails''',
      ));
}

class ConfirmPasswordResetCodeCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? code = '',
    String? newPassword = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "code": "$code",
  "newPassword": "$newPassword",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmPasswordResetCode',
      apiUrl: '$baseUrl/confirmPasswordResetCode',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddHouseholdCall {
  Future<ApiCallResponse> call({
    String? householdName = '',
    String? authorizationToken = '',
    String? customHouseholdNameSuchAsCrew = '',
    String? account = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "householdName": "$householdName",
  "authorizationToken": "$authorizationToken",
  "customHouseholdNameSuchAsCrew": "$customHouseholdNameSuchAsCrew",
  "account": "standard",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addHousehold',
      apiUrl: '$baseUrl/addHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdId''',
      ));
  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdName''',
      ));
  String? customHouseholdNameSuchAsCrew(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customHouseholdName''',
      ));
  String? account(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account''',
      ));
}

class AddInviteCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? email = '',
    String? householdId = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "email": "$email",
  "householdId": "$householdId",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addInvite',
      apiUrl: '$baseUrl/addInvite',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AcceptInviteCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'acceptInvite',
      apiUrl: '$baseUrl/acceptInvite',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMemberFromHouseholdCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? memberUuid = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "memberUuid": "$memberUuid",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteMemberFromHousehold',
      apiUrl: '$baseUrl/deleteMemberFromHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class EditHouseholdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'editHousehold',
      apiUrl: '$baseUrl/editHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHouseholdMembersCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHouseholdMembers',
      apiUrl: '$baseUrl/getHouseholdMembers',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? userEmail(dynamic response) => (getJsonField(
        response,
        r'''$.members[:].user.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userFirstName(dynamic response) => (getJsonField(
        response,
        r'''$.members[:].user.firstName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userLastName(dynamic response) => (getJsonField(
        response,
        r'''$.members[:].user.lastName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userJoinedDate(dynamic response) => (getJsonField(
        response,
        r'''$.members[:].joinedDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DeleteHouseholdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteHousehold',
      apiUrl: '$baseUrl/deleteHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHouseholdCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? ipAddress = '',
    String? deviceDetails = '',
    int? page = 1,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails",
  "page": $page
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHousehold',
      apiUrl: '$baseUrl/getHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdName(dynamic response) => (getJsonField(
        response,
        r'''$[:].householdName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? creationDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].creationDate''',
      ));
  String? customHouseholdNameSuchAsCrew(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].customHouseholdNameSuchAsCrew''',
      ));
  String? account(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].account''',
      ));
  bool? setupComplete(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].setupComplete''',
      ));
  bool? activeSubscription(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].activeSubscription''',
      ));
}

class GetHouseholdByIdCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHouseholdById',
      apiUrl: '$baseUrl/getHouseholdById',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdId''',
      ));
  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdName''',
      ));
  String? customHouseholdNameSuchAsCrew(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customHouseholdNameSuchAsCrew''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? creationDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creationDate''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? account(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account''',
      ));
  bool? setupComplete(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.setupComplete''',
      ));
  bool? activeSubscription(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.activeSubscription''',
      ));
  List? members(dynamic response) => getJsonField(
        response,
        r'''$.members''',
        true,
      ) as List?;
  String? memberId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.members[:].id''',
      ));
  String? memberEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.members[:].memberUuid''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.members[:].role''',
      ));
  String? joinedDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.members[:].joinedDate''',
      ));
  String? memberCreatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.members[:].createdAt''',
      ));
  String? memberUpdatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.members[:].updatedAt''',
      ));
}

class AddPaymentSourceCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? sourceName = '',
    String? sourceType = '',
    String? details = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "authorizationToken": "eyJraWQiOiJrZ1FJcEZkYUlVRUhETGQ4NmIyYkh0a1lvbitKOVRsbkdzSUZoaElld0VzPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiI1NDk4YTQ4OC0wMDQxLTcwOTctOGRlYy00MWNjMWQ0ZGZkYzkiLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAudXMtZWFzdC0xLmFtYXpvbmF3cy5jb21cL3VzLWVhc3QtMV84UVA2MkdoQ0EiLCJjbGllbnRfaWQiOiJoNm81ZmhqNDAycXZnbG50MDE1MTdzaHAxIiwib3JpZ2luX2p0aSI6Ijk3YjFjODMyLTk0NTEtNDA4Ny05NDUzLTExZjJiN2NkNWQ1YyIsImV2ZW50X2lkIjoiMzMwYTcxMTQtNTU0Ny00ODg5LTk3MGEtZmUwMjI4Njg0YTliIiwidG9rZW5fdXNlIjoiYWNjZXNzIiwic2NvcGUiOiJhd3MuY29nbml0by5zaWduaW4udXNlci5hZG1pbiIsImF1dGhfdGltZSI6MTcxNzMyOTg2MywiZXhwIjoxNzE3MzMzNDYzLCJpYXQiOjE3MTczMjk4NjMsImp0aSI6ImQ3NWI4NjM1LWZhMzctNDM0Yy1iYWJjLTgyZDZkZWNmMjVlZiIsInVzZXJuYW1lIjoiZHJld2xlYXJucysxMEBoZXkuY29tIn0.hMUXOnQr-aVMCMbIcG_Mn1MYUygA-V4dujiQYvXeYpiVuCF8yS_m85xftnuWiVQj-8NOZhZcJCAayHfvMzaUZzfXzpyOBp7jRkasjeov7ifGReoLopy8-j_u5UtOPv0S8UXsPLcDHmsOPnFzWiZhGk2D0lfLLXbwO7R0fuyCg6pkaqEUDAG_x3Rv1gRwP7w8H6P8_OhXsP-lmVUoxNSGFVcmy-Svsqalwst2Q8PRZXfxI5hrOS1-YuKy2FVL-1Y6udgvXgIMqnpF33Odm1ZophE7vDZiDljLh83UrWZP-2lPcH4bknFt12YD9bCI3WlQC6WmD9EJBrgbRW_LOk-iwA",
  "householdId": "5601068c-ae76-49ad-a938-0ea4d90b5865",
  "sourceName": "Ally Bank",
  "sourceType": "Bank",
  "details": "Joint Account",
  "ipAddress": "192.168.1.1",
  "deviceDetails": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPaymentSource',
      apiUrl: '$baseUrl/addPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.sourceId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.householdId''',
      ));
  String? sourceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.sourceName''',
      ));
  String? sourceType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.sourceType''',
      ));
  String? details(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.details''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.updatedAt''',
      ));
}

class DeletePaymentSourceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'deletePaymentSource',
      apiUrl: '$baseUrl/deletePaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditPaymentSourceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'editPaymentSource',
      apiUrl: '$baseUrl/editPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPaymentSourceCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPaymentSource',
      apiUrl: '$baseUrl/getPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? paymentSources(dynamic response) => getJsonField(
        response,
        r'''$.paymentSources''',
        true,
      ) as List?;
  String? sourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].sourceId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].householdId''',
      ));
  String? sourceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].sourceName''',
      ));
  String? sourceType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].sourceType''',
      ));
  String? details(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].details''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSources[:].updatedAt''',
      ));
}

class AddBillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'addBill',
      apiUrl: '$baseUrl/addBill',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBillPasswordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getBillPassword',
      apiUrl: '$baseUrl/getBillPassword',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteBillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteBill',
      apiUrl: '$baseUrl/deleteBill',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFilePathCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getFilePath',
      apiUrl: '$baseUrl/getFilePath',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditBillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'editBill',
      apiUrl: '$baseUrl/editBill',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBillsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getBills',
      apiUrl: '$baseUrl/getBills',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'addNotification',
      apiUrl: '$baseUrl/addNotification',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'editNotification',
      apiUrl: '$baseUrl/editNotification',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteNotification',
      apiUrl: '$baseUrl/deleteNotification',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getNotifications',
      apiUrl: '$baseUrl/getNotifications',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTransactionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTransaction',
      apiUrl: '$baseUrl/addTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransaction',
      apiUrl: '$baseUrl/getTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionByMonthCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? transactionId = '',
    String? ipAddress = '',
    String? deviceDetails = '',
    int? month,
    int? year,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails",
  "month": $month,
  "year": $year
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactionByMonth',
      apiUrl: '$baseUrl/getTransactionsByMonth',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class SearchTransactionsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchTransactions',
      apiUrl: '$baseUrl/searchTransactions',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionsByPaymentSourceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactionsByPaymentSource',
      apiUrl: '$baseUrl/getTransactionsByPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAuditTrailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getAuditTrail',
      apiUrl: '$baseUrl/getAuditTrail',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSecurityLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSecurityLog',
      apiUrl: '$baseUrl/getSecurityLog',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetDefaultPaymentSourceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'setDefaultPaymentSource',
      apiUrl: '$baseUrl/setDefaultPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDefaultPaymentSourcePreferenceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDefaultPaymentSourcePreference',
      apiUrl: '$baseUrl/getDefaultPaymentSourcePreference',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditDefaultPaymentSourceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'editDefaultPaymentSource',
      apiUrl: '$baseUrl/editDefaultPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetCurrencyPreferenceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'setCurrencyPreference',
      apiUrl: '$baseUrl/setCurrencyPreference',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCurrencyPreferenceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCurrencyPreference',
      apiUrl: '$baseUrl/getCurrencyPreference',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCurrencyPreferenceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'editCurrencyPreference',
      apiUrl: '$baseUrl/editCurrencyPreference',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetThresholdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'setThreshold',
      apiUrl: '$baseUrl/setThreshold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditThresholdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'editThreshold',
      apiUrl: '$baseUrl/editThreshold',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetThresholdBreakersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getThresholdBreakers',
      apiUrl: '$baseUrl/getThresholdBreakers',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetThresholdPreferenceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'getThresholdPreference',
      apiUrl: '$baseUrl/getThresholdPreference',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddIncomeCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? name = '',
    String? amount = '',
    String? firstPayDay = '',
    String? frequency = '',
    String? description = '',
    String? ipAddress = '',
    String? deviceDetails = '',
    String? paymentSourceId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
    "authorizationToken": "",
    "householdId": "",
    "name": "",
    "amount": "",
    "firstPayDay": "",
    "frequency": "",
    "description": "",
    "ipAddress": "",
    "deviceDetails": "",
    "paymentSourceId": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addIncome',
      apiUrl: '$baseUrl/addIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class EditIncomeJsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'editIncome.js',
      apiUrl: '$baseUrl/editIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIncomesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getIncomes',
      apiUrl: '$baseUrl/getIncomes',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIncomeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getIncome',
      apiUrl: '$baseUrl/getIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteIncomeJsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteIncome.js',
      apiUrl: '$baseUrl/deleteIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunningTotalCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? paymentSourceId = '',
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "paymentSourceId": "$paymentSourceId",
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getRunningTotal',
      apiUrl: '$baseUrl/getRunningTotal',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? runningTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.runningTotal''',
      ));
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSourceId''',
      ));
}

class GetRunningTotalsByDateCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRunningTotalsByDate',
      apiUrl: '$baseUrl/getRunningTotalsByDate',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCategoriesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCategories',
      apiUrl: '$baseUrl/getCategories',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExportLedgerToCsvCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'exportLedgerToCsv',
      apiUrl: '$baseUrl/exportLedgerToCsv',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExportLedgerToQBOCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'exportLedgerToQBO',
      apiUrl: '$baseUrl/exportLedgerToQBO',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLedgerCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    int? month,
    int? year,
    String? ipAddress = '',
    String? deviceDetails = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "month": $month,
  "year": $year,
  "ipAddress": "$ipAddress",
  "deviceDetails": "$deviceDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedger',
      apiUrl: '$baseUrl/getLedger',
      callType: ApiCallType.POST,
      headers: {
        'x-auth': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? entries(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries''',
        true,
      ) as List?;
  String? ledgerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].ledgerId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].householdId''',
      ));
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSourceId''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ledgerEntries[:].amount''',
      ));
  String? transactionType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionType''',
      ));
  String? transactionDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionDate''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ledgerEntries[:].status''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].createdAt''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedAt''',
      ));
  String? updatedBy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedBy''',
      ));
  int? runningTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ledgerEntries[:].runningTotal''',
      ));
  List? transactions(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].transactions''',
        true,
      ) as List?;
}

/// End TPPB Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

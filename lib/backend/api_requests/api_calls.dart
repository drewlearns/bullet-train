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
}

class EditUserCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
}

class GetHouseholdByIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
}

class AddPaymentSourceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    const ffApiRequestBody = '''
""''';
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRunningTotal',
      apiUrl: '$baseUrl/getRunningTotal',
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
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getLedger',
      apiUrl: '$baseUrl/getLedger',
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
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
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

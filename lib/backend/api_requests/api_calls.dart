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
    'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  static GetLedgerAllCall getLedgerAllCall = GetLedgerAllCall();
  static GetLedgerThisMonthCall getLedgerThisMonthCall =
      GetLedgerThisMonthCall();
  static GetLedgerClearedCall getLedgerClearedCall = GetLedgerClearedCall();
  static GetLedgerEntryCall getLedgerEntryCall = GetLedgerEntryCall();
  static DeleteLedgerEntryCall deleteLedgerEntryCall = DeleteLedgerEntryCall();
  static ExportSearchCall exportSearchCall = ExportSearchCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static GetDueBillsCall getDueBillsCall = GetDueBillsCall();
  static GetFutureDueBillsCall getFutureDueBillsCall = GetFutureDueBillsCall();
  static EditLedgerEntryCall editLedgerEntryCall = EditLedgerEntryCall();
  static GetMonthlyIncomeTotalCall getMonthlyIncomeTotalCall =
      GetMonthlyIncomeTotalCall();
  static GetPastDueBillsCall getPastDueBillsCall = GetPastDueBillsCall();
  static GetTotalSpentCall getTotalSpentCall = GetTotalSpentCall();
  static GetBillCall getBillCall = GetBillCall();
  static GetSafeToSpendCall getSafeToSpendCall = GetSafeToSpendCall();
  static EditLedgerEntryAsClearedCall editLedgerEntryAsClearedCall =
      EditLedgerEntryAsClearedCall();
  static GetCurrentMonthIncomeCall getCurrentMonthIncomeCall =
      GetCurrentMonthIncomeCall();
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
  "lastName": "$lastName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addUser',
      apiUrl: '$baseUrl/addUser',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "confirmationCode": "$confirmationCode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmSignup',
      apiUrl: '$baseUrl/confirmSignup',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl: '$baseUrl/getUser',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "email": "$email",
  "newUsername": "$newUsername",
  "phoneNumber": "$phoneNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editUser',
      apiUrl: '$baseUrl/editUser',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPassword',
      apiUrl: '$baseUrl/forgotPassword',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "code": "$code",
  "newPassword": "$newPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmPasswordResetCode',
      apiUrl: '$baseUrl/confirmPasswordResetCode',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "householdName": "$householdName",
  "authorizationToken": "$authorizationToken",
  "customHouseholdNameSuchAsCrew": "$customHouseholdNameSuchAsCrew"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addHousehold',
      apiUrl: '$baseUrl/addHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "email": "$email",
  "householdId": "$householdId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addInvite',
      apiUrl: '$baseUrl/addInvite',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "memberUuid": "$memberUuid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteMemberFromHousehold',
      apiUrl: '$baseUrl/deleteMemberFromHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
    int? page = 1,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "page": $page
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHousehold',
      apiUrl: '$baseUrl/getHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHouseholdById',
      apiUrl: '$baseUrl/getHouseholdById',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "sourceName": "$sourceName",
  "sourceType": "$sourceType",
  "details": "$details"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPaymentSource',
      apiUrl: '$baseUrl/addPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPaymentSource',
      apiUrl: '$baseUrl/getPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? category = '',
    String? billName = '',
    double? amount,
    String? dayOfMonth = '',
    String? frequency = '',
    String? isDebt = '',
    String? interestRate = '',
    String? cashBack = '',
    String? description = '',
    String? url = '',
    String? password = '',
    String? paymentSourceId = '',
    String? username = '',
    bool? status,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "paymentSourceId": "$paymentSourceId",
  "billName": "$billName",
  "dayOfMonth": "$dayOfMonth",
  "frequency": "$frequency",
  "username": "$username",
  "password": "$password",
  "tags": "$category,$billName",
  "description": "$description",
  "amount": $amount,
  "category": "$category",
  "interestRate": "$interestRate",
  "cashBack": "$cashBack",
  "isDebt": "$isDebt",
  "status": false,
  "url": "$url"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addBill',
      apiUrl: '$baseUrl/addBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

class GetBillPasswordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getBillPassword',
      apiUrl: '$baseUrl/getBillPassword',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? transactionId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFilePath',
      apiUrl: '$baseUrl/getFilePath',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class EditBillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'editBill',
      apiUrl: '$baseUrl/editBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? amount = '',
    String? transactionType = '',
    String? transactionDate = '',
    String? category = '',
    String? description = '',
    String? status = '',
    String? sourceId = '',
    String? tags = '',
    String? image = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "amount": "$amount",
  "transactionType": "$transactionType",
  "transactionDate": "$transactionDate",
  "category": "$category",
  "description": "$description",
  "status": "$status",
  "sourceId": "$sourceId",
  "tags": "$tags",
  "image": "$image"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTransaction',
      apiUrl: '$baseUrl/addTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  dynamic transaction(dynamic response) => getJsonField(
        response,
        r'''$.transaction''',
      );
  String? transactionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.transactionId''',
      ));
  String? ledgerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledgerId''',
      ));
  String? sourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.sourceId''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction.amount''',
      ));
  String? transactionDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.transactionDate''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.description''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.updatedAt''',
      ));
}

class GetTransactionCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? transactionId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransaction',
      apiUrl: '$baseUrl/getTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  String? transactionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.transactionId''',
      ));
  String? ledgerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledgerId''',
      ));
  String? sourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.sourceId''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.transaction.amount''',
      ));
  String? transactionDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.transactionDate''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.description''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.updatedAt''',
      ));
  String? ledgerHouseholdId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.householdId''',
      ));
  double? ledgerAmount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.transaction.ledger.amount''',
      ));
  String? ledgerTransactionType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.transactionType''',
      ));
  String? ledgerTransactionDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.transactionDate''',
      ));
  String? ledgerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.category''',
      ));
  String? ledgerDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.description''',
      ));
  bool? ledgerStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.transaction.ledger.status''',
      ));
  String? ledgerUpdatedBy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.updatedBy''',
      ));
  double? ledgerRunningTotal(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.transaction.ledger.runningTotal''',
      ));
  String? ledgerTags(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.ledger.tags''',
      ));
  String? paymentSourceSourceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.paymentSource.sourceId''',
      ));
  String? paymentSourceSourceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.paymentSource.sourceName''',
      ));
  String? paymentSourceSourceType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.paymentSource.sourceType''',
      ));
  String? paymentSourceDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.paymentSource.description''',
      ));
  String? paymentSourceCreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.paymentSource.createdAt''',
      ));
  String? paymentSourceUpdatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.paymentSource.updatedAt''',
      ));
}

class GetTransactionByMonthCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? transactionId = '',
    int? month,
    int? year,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId",
  "month": $month,
  "year": $year
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactionByMonth',
      apiUrl: '$baseUrl/getTransactionsByMonth',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  Future<ApiCallResponse> call({
    String? query = '',
    String? authorizationToken = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "query": "$query"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchTransactions',
      apiUrl: '$baseUrl/searchTransactions',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  List? transactionsList(dynamic response) => getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?;
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedBy(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].updatedBy''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tags(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeName(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].income.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdName(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].household.householdName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
    String? paymentSourceId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "name": "$name",
  "amount": "$amount",
  "firstPayDay": "$firstPayDay",
  "frequency": "$frequency",
  "description": "$description",
  "paymentSourceId": "$paymentSourceId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addIncome',
      apiUrl: '$baseUrl/addIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
      callName: 'getIncomes',
      apiUrl: '$baseUrl/getIncomes',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  List? incomesList(dynamic response) => getJsonField(
        response,
        r'''$.incomes''',
        true,
      ) as List?;
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$.incomes[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.incomes[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.incomes[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? payday(dynamic response) => (getJsonField(
        response,
        r'''$.incomes[:].payday''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetIncomeCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? incomeId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "incomeId": "$incomeId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getIncome',
      apiUrl: '$baseUrl/getIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  String? incomeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.incomeId''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.name''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.income.amount''',
      ));
  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.frequency''',
      ));
  String? firstPayDay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.firstPayDay''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.updatedAt''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.household.householdId''',
      ));
  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.household.householdName''',
      ));
  String? ledgerIID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.ledgers[:].ledgerId''',
      ));
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.ledgers[:].paymentSourceId''',
      ));
  String? transactionType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.ledgers[:].transactionType''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.ledgers[:].category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.ledgers[:].description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.income.ledgers[:].status''',
      ));
  String? ledgerupdatedBy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.ledgers[:].updatedBy''',
      ));
  double? runningTotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.income.ledgers[:].runningTotal''',
      ));
}

class DeleteIncomeJsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteIncome.js',
      apiUrl: '$baseUrl/deleteIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "paymentSourceId": "$paymentSourceId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getRunningTotal',
      apiUrl: '$baseUrl/getRunningTotal',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

class GetLedgerAllCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    bool? clearedOnly,
    bool? currentMonthOnly,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "clearedOnly": $clearedOnly,
  "currentMonthOnly": $currentMonthOnly
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedgerAll',
      apiUrl: '$baseUrl/getLedger',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  List? ledgerEntriesList(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries''',
        true,
      ) as List?;
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedBy(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedBy''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? billId(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].billId''',
        true,
      ) as List?;
  List? incomeId(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].incomeId''',
        true,
      ) as List?;
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? interestRate(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].interestRate''',
        true,
      ) as List?;
  List? cacheBack(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].cashBack''',
        true,
      ) as List?;
  List<String>? tags(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? bill(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].bill''',
        true,
      ) as List?;
  List? income(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].income''',
        true,
      ) as List?;
  List? paymentsourceList(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource''',
        true,
      ) as List?;
  List<String>? paymentSourceSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource.sourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetLedgerThisMonthCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    bool? clearedOnly,
    bool? currentMonthOnly,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "clearedOnly": $clearedOnly,
  "currentMonthOnly": $currentMonthOnly
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedgerThisMonth',
      apiUrl: '$baseUrl/getLedger',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  List? ledgerEntriesList(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries''',
        true,
      ) as List?;
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedBy(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedBy''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? interestRate(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].interestRate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? cacheBack(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].cashBack''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource.sourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetLedgerClearedCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    bool? clearedOnly,
    bool? currentMonthOnly,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "clearedOnly": $clearedOnly,
  "currentMonthOnly": $currentMonthOnly
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedgerCleared',
      apiUrl: '$baseUrl/getLedger',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  List? ledgerEntriesList(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries''',
        true,
      ) as List?;
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedBy(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].updatedBy''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? interestRate(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].interestRate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? cacheBack(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].cashBack''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource.sourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetLedgerEntryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getLedgerEntry',
      apiUrl: '$baseUrl/getLedgerEntry',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteLedgerEntryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteLedgerEntry',
      apiUrl: '$baseUrl/deleteLedgerEntry',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExportSearchCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'exportSearch',
      apiUrl: '$baseUrl/exportSearch',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '$baseUrl/changePassword',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDueBillsCall {
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
      callName: 'getDueBills',
      apiUrl: '$baseUrl/getDueBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  List? dueBillsList(dynamic response) => getJsonField(
        response,
        r'''$.dueBills''',
        true,
      ) as List?;
  List<String>? billName(dynamic response) => (getJsonField(
        response,
        r'''$.dueBills[:].billName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.dueBills[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.dueBills[:].paymentSourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dueDate(dynamic response) => (getJsonField(
        response,
        r'''$.dueBills[:].dueDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amountDue(dynamic response) => (getJsonField(
        response,
        r'''$.dueBills[:].amountDue''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.dueBills[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetFutureDueBillsCall {
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
      callName: 'getFutureDueBills',
      apiUrl: '$baseUrl/getFutureDueBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  List? billsList(dynamic response) => getJsonField(
        response,
        r'''$.bills''',
        true,
      ) as List?;
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billName(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].billName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].paymentSourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dueDate(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].dueDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class EditLedgerEntryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'editLedgerEntry',
      apiUrl: '$baseUrl/editLedgerEntry',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMonthlyIncomeTotalCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TppbGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMonthlyIncomeTotal',
      apiUrl: '$baseUrl/getMonthlyIncomeTotal',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPastDueBillsCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    bool? pastDueOnly,
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "pastDueOnly":$pastDueOnly
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPastDueBills',
      apiUrl: '$baseUrl/getPastDueBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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
  List? billsList(dynamic response) => getJsonField(
        response,
        r'''$.bills''',
        true,
      ) as List?;
  List<String>? billName(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].billName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].paymentSourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dueDate(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].dueDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetTotalSpentCall {
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
      callName: 'getTotalSpent',
      apiUrl: '$baseUrl/getTotalSpent',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  double? totalSpent(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalSpent''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetBillCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? billId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "billId": "$billId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBill',
      apiUrl: '$baseUrl/getBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

class GetSafeToSpendCall {
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
      callName: 'getSafeToSpend',
      apiUrl: '$baseUrl/getSafeToSpend',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  double? safeToSpend(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.safeToSpend''',
      ));
  String? nextPayday(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextPayday''',
      ));
}

class EditLedgerEntryAsClearedCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? ledgerId = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "ledgerId": "$ledgerId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editLedgerEntryAsCleared',
      apiUrl: '$baseUrl/editLedgerEntryAsCleared',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

class GetCurrentMonthIncomeCall {
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
      callName: 'getCurrentMonthIncome',
      apiUrl: '$baseUrl/getCurrentMonthIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'nDHQMyD3U5L545Uqa1Z8YdiYtmc3jvtD',
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

  String? totalIncome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.totalIncome''',
      ));
  String? safeToSpend(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.safeToSpend''',
      ));
  String? nextPayday(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextPayday''',
      ));
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

import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TPPB Group Code

class TppbGroup {
  static String getBaseUrl({
    String? globalRefreshToken = 'FAKE',
  }) =>
      'https://api.thepurplepiggybank.com';
  static Map<String, String> headers = {
    'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
  };
  static AddUserCall addUserCall = AddUserCall();
  static ConfirmSignupCall confirmSignupCall = ConfirmSignupCall();
  static LoginCall loginCall = LoginCall();
  static GetUserCall getUserCall = GetUserCall();
  static EditUserCall editUserCall = EditUserCall();
  static DeleteUserJsCall deleteUserJsCall = DeleteUserJsCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
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
  static GetThresholdBreakersCall getThresholdBreakersCall =
      GetThresholdBreakersCall();
  static AddIncomeCall addIncomeCall = AddIncomeCall();
  static EditIncomeCall editIncomeCall = EditIncomeCall();
  static GetIncomesCall getIncomesCall = GetIncomesCall();
  static GetIncomeCall getIncomeCall = GetIncomeCall();
  static DeleteIncomeJsCall deleteIncomeJsCall = DeleteIncomeJsCall();
  static GetRunningTotalCall getRunningTotalCall = GetRunningTotalCall();
  static GetCategoriesCall getCategoriesCall = GetCategoriesCall();
  static ExportLedgerToCsvCall exportLedgerToCsvCall = ExportLedgerToCsvCall();
  static ExportLedgerToQBOCall exportLedgerToQBOCall = ExportLedgerToQBOCall();
  static GetLedgerAllCall getLedgerAllCall = GetLedgerAllCall();
  static ExportSearchCall exportSearchCall = ExportSearchCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static GetDueBillsCall getDueBillsCall = GetDueBillsCall();
  static GetFutureDueBillsCall getFutureDueBillsCall = GetFutureDueBillsCall();
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
  static EditTransactionCall editTransactionCall = EditTransactionCall();
  static DeleteTransactionCall deleteTransactionCall = DeleteTransactionCall();
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
"refreshToken":"$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl: '$baseUrl/getUser',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUser.js',
      apiUrl: '$baseUrl/deleteUser',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? refreshToken = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "refreshToken": "$refreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'refreshToken',
      apiUrl: '$baseUrl/refreshToken',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  dynamic tokens(dynamic response) => getJsonField(
        response,
        r'''$.tokens''',
      );
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokens.AccessToken''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokens.RefreshToken''',
      ));
  String? idtoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tokens.IdToken''',
      ));
  dynamic expiresIn(dynamic response) => getJsonField(
        response,
        r'''$.tokens.ExpiresIn''',
      );
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "username": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPassword',
      apiUrl: '$baseUrl/forgotPassword',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "householdName": "$householdName",
  "authorizationToken": "$authorizationToken",
  "customHouseholdNameSuchAsCrew": "$customHouseholdNameSuchAsCrew",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addHousehold',
      apiUrl: '$baseUrl/addHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "email": "$email",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addInvite',
      apiUrl: '$baseUrl/addInvite',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? username = '',
    String? invitationId = '',
    bool? mailOptin,
    String? firstName = '',
    String? lastName = '',
    String? phoneNumber = '',
    String? password = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "invitationId": "$invitationId",
  "username": "$username",
  "mailOptin": $mailOptin,
  "firstName": "$firstName",
  "lastName": "$lastName",
  "phoneNumber": "$phoneNumber",
  "password": "$password",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'acceptInvite',
      apiUrl: '$baseUrl/acceptInvite',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "memberUuid": "$memberUuid",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteMemberFromHousehold',
      apiUrl: '$baseUrl/deleteMemberFromHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? householdid = '',
    String? householdName = '',
    String? authorizationToken = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "householdId": "$householdid",
  "householdName": "$householdName",
  "authorizationToken": "$authorizationToken",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editHousehold',
      apiUrl: '$baseUrl/editHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetHouseholdMembersCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHouseholdMembers',
      apiUrl: '$baseUrl/getHouseholdMembers',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteHousehold',
      apiUrl: '$baseUrl/deleteHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "page": $page,
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHousehold',
      apiUrl: '$baseUrl/getHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHouseholdById',
      apiUrl: '$baseUrl/getHouseholdById',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "sourceName": "$sourceName",
  "sourceType": "$sourceType",
  "details": "$details",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPaymentSource',
      apiUrl: '$baseUrl/addPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? sourceId = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "sourceId": "$sourceId",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deletePaymentSource',
      apiUrl: '$baseUrl/deletePaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? name = '',
    String? type = '',
    String? sourceId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "sourceName": "$name",
  "sourceType": "$type",
  "sourceId": "$sourceId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editPaymentSource',
      apiUrl: '$baseUrl/editPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetPaymentSourceCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPaymentSource',
      apiUrl: '$baseUrl/getPaymentSource',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
  "url": "$url",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addBill',
      apiUrl: '$baseUrl/addBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? billId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "billId": "$billId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBillPassword',
      apiUrl: '$baseUrl/getBillPassword',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

  String? secretUsername(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.secret.username''',
      ));
  String? secretPassword(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.secret.password''',
      ));
}

class DeleteBillCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? billId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "billId": "$billId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteBill',
      apiUrl: '$baseUrl/deleteBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetFilePathCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? transactionId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFilePath',
      apiUrl: '$baseUrl/getFilePath',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? billId = '',
    String? category = '',
    double? amount,
    int? dayOfMonth,
    String? frequency = '',
    String? isDebt = '',
    double? interestRate,
    double? cashBack,
    String? description = '',
    bool? status,
    String? url = '',
    String? username = '',
    String? password = '',
    String? billName = '',
    String? notificationId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "billId": "$billId",
  "updates": {
    "category": "$category",
    "billName": "$billName",
    "amount": $amount,
    "dayOfMonth": $dayOfMonth,
    "frequency": "$frequency",
    "isDebt": "$isDebt",
    "interestRate": $interestRate,
    "cashBack": $cashBack,
    "description": "$description",
    "status": $status,
    "url": "$url",
    "username": "$username",
    "password": "$password",
    "notificationId": "$notificationId",
    "refreshToken": "$globalRefreshToken"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editBill',
      apiUrl: '$baseUrl/editBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetBillsCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBills',
      apiUrl: '$baseUrl/getBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  List? allBillsList(dynamic response) => getJsonField(
        response,
        r'''$.allBills''',
        true,
      ) as List?;
  String? billId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].billId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].householdId''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].category''',
      ));
  String? billName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].billName''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.allBills[:].amount''',
      ));
  int? dayOfMonth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.allBills[:].dayOfMonth''',
      ));
  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].frequency''',
      ));
  bool? isDebt(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.allBills[:].isDebt''',
      ));
  int? interestRate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.allBills[:].interestRate''',
      ));
  int? cashBack(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.allBills[:].cashBack''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.allBills[:].status''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].url''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].username''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].password''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.allBills[:].updatedAt''',
      ));
}

class EditNotificationCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? notificationId = '',
    String? title = '',
    String? message = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "",
  "notificationId": "",
  "title": "",
  "message": "",
  "read": false,
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editNotification',
      apiUrl: '$baseUrl/editNotification',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? notificationId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "notificationId": "$notificationId",
"refreshToken":"$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteNotification',
      apiUrl: '$baseUrl/deleteNotification',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetNotificationsCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getNotifications',
      apiUrl: '$baseUrl/getNotifications',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  List? notificationsList(dynamic response) => getJsonField(
        response,
        r'''$.notifications''',
        true,
      ) as List?;
  List<String>? notificationId(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].notificationId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].userUuid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notificationMessage(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? read(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].read''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.notifications[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

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
  "image": "$image",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTransaction',
      apiUrl: '$baseUrl/addTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransaction',
      apiUrl: '$baseUrl/getTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId",
  "month": $month,
  "year": $year,
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactionByMonth',
      apiUrl: '$baseUrl/getTransactionsByMonth',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "query": "$query",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchTransactions',
      apiUrl: '$baseUrl/searchTransactions',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetThresholdBreakersCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? threshold = '',
    String? paymentSourceId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "threshold": "$threshold",
  "paymentSourceId": "$paymentSourceId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getThresholdBreakers',
      apiUrl: '$baseUrl/getThresholdBreakers',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

  List? entriesList(dynamic response) => getJsonField(
        response,
        r'''$.entries''',
        true,
      ) as List?;
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.entries[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.entries[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.entries[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.entries[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "name": "$name",
  "amount": "$amount",
  "firstPayDay": "$firstPayDay",
  "frequency": "$frequency",
  "description": "$description",
  "paymentSourceId": "$paymentSourceId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addIncome',
      apiUrl: '$baseUrl/addIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class EditIncomeCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? incomeId = '',
    String? householdId = '',
    String? name = '',
    double? amount,
    String? firstPayDay = '',
    String? frequency = '',
    String? description = '',
    String? paymentSourceId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "incomeId": "$incomeId",
  "householdId": "$householdId",
  "name": "$name",
  "amount": $amount,
  "firstPayDay": "$firstPayDay",
  "frequency": "$frequency",
  "description": "$description",
  "paymentSourceId": "$paymentSourceId",
"refreshToken":"$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editIncome',
      apiUrl: '$baseUrl/editIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetIncomesCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getIncomes',
      apiUrl: '$baseUrl/getIncomes',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "incomeId": "$incomeId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getIncome',
      apiUrl: '$baseUrl/getIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.name''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
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
  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.income.householdName''',
      ));
}

class DeleteIncomeJsCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? incomeId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "incomeId": "$incomeId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteIncome.js',
      apiUrl: '$baseUrl/deleteIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetRunningTotalCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? paymentSourceId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "paymentSourceId": "$paymentSourceId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getRunningTotal',
      apiUrl: '$baseUrl/getRunningTotal',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetCategoriesCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    int? month,
    int? year,
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "month": $month,
  "year": $year,
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCategories',
      apiUrl: '$baseUrl/getCategories',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

  List? monthSpend(dynamic response) => getJsonField(
        response,
        r'''$.monthSpend''',
        true,
      ) as List?;
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.monthSpend[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.monthSpend[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? yearToDateSpend(dynamic response) => getJsonField(
        response,
        r'''$.yearToDateSpend''',
        true,
      ) as List?;
  List<String>? ytdcategory(dynamic response) => (getJsonField(
        response,
        r'''$.yearToDateSpend[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ytdamount(dynamic response) => (getJsonField(
        response,
        r'''$.yearToDateSpend[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ExportLedgerToCsvCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? paymentSourceId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "refreshToken": "$globalRefreshToken",
  "householdId": "$householdId",
  "paymentSourceId": "$paymentSourceId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exportLedgerToCsv',
      apiUrl: '$baseUrl/exportLedgerToCsv',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class ExportLedgerToQBOCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? paymentSourceId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "refreshToken": "$globalRefreshToken",
  "householdId": "$householdId",
  "paymentSourceId": "$paymentSourceId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exportLedgerToQBO',
      apiUrl: '$baseUrl/exportLedgerToQBO',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetLedgerAllCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    bool? clearedOnly,
    bool? currentMonthOnly,
    String? transactionName = '',
    double? minAmount = 0.01,
    double? maxAmount = 100000,
    int? page = 1,
    int? pageSize = 20,
    int? year,
    String? month = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "filters": {
    "clearedOnly": $clearedOnly,
    "currentMonthOnly": $currentMonthOnly,
    "transactionName": "$transactionName",
    "minAmount": $minAmount,
    "maxAmount": $maxAmount,
    "year": $year,
    "month": "$month"
  },
  "pagination": {
    "page": $page,
    "itemsPerPage": $pageSize
  },
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedgerAll',
      apiUrl: '$baseUrl/getLedger',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.lastResponse''',
        true,
      ) as List?;
  int? nextPageNumber(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPageNumber''',
      ));
  int? numberOfItemsLoaded(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.numberOfItemsLoaded''',
      ));
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedBy(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].updatedBy''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? interestRate(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].interestRate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? cashBack(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].cashBack''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? tags(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? month(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].month''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.lastResponse[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ExportSearchCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? category = '',
    String? reportType = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "category": "$category",
  "reportType": "",
  "householdId": "",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exportSearch',
      apiUrl: '$baseUrl/exportSearch',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? oldPassword = '',
    String? newPassword = '',
    String? authorizationToken = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "username": "$email",
  "oldPassword": "$oldPassword",
  "newPassword": "$newPassword",
  "authorizationToken": "$authorizationToken",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '$baseUrl/changePassword',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetDueBillsCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDueBills',
      apiUrl: '$baseUrl/getDueBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFutureDueBills',
      apiUrl: '$baseUrl/getFutureDueBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class GetMonthlyIncomeTotalCall {
  Future<ApiCallResponse> call({
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getMonthlyIncomeTotal',
      apiUrl: '$baseUrl/getMonthlyIncomeTotal',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "pastDueOnly": $pastDueOnly,
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPastDueBills',
      apiUrl: '$baseUrl/getPastDueBills',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTotalSpent',
      apiUrl: '$baseUrl/getTotalSpent',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "billId": "$billId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBill',
      apiUrl: '$baseUrl/getBill',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.billName''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.bill.amount''',
      ));
  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.frequency''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.description''',
      ));
  int? dayofMonth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bill.dayOfMonth''',
      ));
  bool? isDebt(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.bill.isDebt''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.url''',
      ));
  String? usernameRef(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.username''',
      ));
  String? passwordRef(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.password''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bill.updatedAt''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.bill.status''',
      ));
  dynamic notificationId(dynamic response) => getJsonField(
        response,
        r'''$.bill.notificationId''',
      );
}

class GetSafeToSpendCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? householdId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSafeToSpend',
      apiUrl: '$baseUrl/getSafeToSpend',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "ledgerId": "$ledgerId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editLedgerEntryAsCleared',
      apiUrl: '$baseUrl/editLedgerEntryAsCleared',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCurrentMonthIncome',
      apiUrl: '$baseUrl/getCurrentMonthIncome',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

  double? totalIncome(dynamic response) => castToType<double>(getJsonField(
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

class EditTransactionCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? authorizationToken = '',
    String? householdId = '',
    double? amount,
    String? transactionType = '',
    String? transactionDate = '',
    String? category = '',
    String? description = '',
    String? status = '',
    String? sourceId = '',
    String? tags = '',
    String? image = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "transactionId": "$transactionId",
  "authorizationToken": "$authorizationToken",
  "householdId": "$householdId",
  "amount": $amount,
  "transactionType": "$transactionType",
  "transactionDate": "$transactionDate",
  "category": "$category",
  "description": "$description",
  "status": "$status",
  "sourceId": "$sourceId",
  "tags": "$tags",
  "image": "$image",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editTransaction',
      apiUrl: '$baseUrl/editTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

class DeleteTransactionCall {
  Future<ApiCallResponse> call({
    String? authorizationToken = '',
    String? transactionId = '',
    String? globalRefreshToken = 'FAKE',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      globalRefreshToken: globalRefreshToken,
    );

    final ffApiRequestBody = '''
{
  "authorizationToken": "$authorizationToken",
  "transactionId": "$transactionId",
  "refreshToken": "$globalRefreshToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteTransaction',
      apiUrl: '$baseUrl/deleteTransaction',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
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

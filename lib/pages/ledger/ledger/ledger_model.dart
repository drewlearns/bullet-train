import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/ledger/filter/filter_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'ledger_widget.dart' show LedgerWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LedgerModel extends FlutterFlowModel<LedgerWidget> {
  ///  Local state fields for this page.

  String? householdId;

  bool filterButtonPressed = false;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ledgerController;
  // Stores action output result for [Custom Action - isItRfreshTokenTimeYet] action in Ledger widget.
  bool? refreshTokenTiime;
  // Stores action output result for [Backend Call - API (refreshToken)] action in Ledger widget.
  ApiCallResponse? apiResulth4p;
  // State field(s) for HouseholdIdDropDown widget.
  String? householdIdDropDownValue;
  FormFieldController<String>? householdIdDropDownValueController;
  // Stores action output result for [Backend Call - API (refreshToken)] action in HouseholdIdDropDown widget.
  ApiCallResponse? apiResultc92;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for Filter component.
  late FilterModel filterModel;
  // Stores action output result for [Backend Call - API (editLedgerEntryAsCleared)] action in IconButton widget.
  ApiCallResponse? apiResultymm;

  /// Query cache managers for this widget.

  final _totalSpentManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> totalSpent({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _totalSpentManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTotalSpentCache() => _totalSpentManager.clear();
  void clearTotalSpentCacheKey(String? uniqueKey) =>
      _totalSpentManager.clearRequest(uniqueKey);

  final _safeToSpendManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> safeToSpend({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _safeToSpendManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSafeToSpendCache() => _safeToSpendManager.clear();
  void clearSafeToSpendCacheKey(String? uniqueKey) =>
      _safeToSpendManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    filterModel = createModel(context, () => FilterModel());
  }

  @override
  void dispose() {
    ledgerController?.finish();
    filterModel.dispose();

    /// Dispose query cache managers for this widget.

    clearTotalSpentCache();

    clearSafeToSpendCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

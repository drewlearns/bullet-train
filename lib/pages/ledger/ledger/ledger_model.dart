import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'ledger_widget.dart' show LedgerWidget;
import 'package:flutter/material.dart';

class LedgerModel extends FlutterFlowModel<LedgerWidget> {
  ///  Local state fields for this page.

  String? householdId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for HouseholdIdDropDown widget.
  String? householdIdDropDownValue;
  FormFieldController<String>? householdIdDropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (editLedgerEntryAsCleared)] action in IconButton widget.
  ApiCallResponse? apiResultil3;
  // Stores action output result for [Backend Call - API (editLedgerEntryAsCleared)] action in IconButton widget.
  ApiCallResponse? editLedgerEntryClearedOutput;
  // Stores action output result for [Backend Call - API (editLedgerEntryAsCleared)] action in IconButton widget.
  ApiCallResponse? editLedgerEntryClearedClearOutput;

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
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();

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

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/globall_widgets/ledger_entry/ledger_entry_widget.dart';
import '/flutter_flow/request_manager.dart';

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

  // Models for LedgerEntry dynamic component.
  late FlutterFlowDynamicModels<LedgerEntryModel> ledgerEntryModels1;
  // Models for LedgerEntry dynamic component.
  late FlutterFlowDynamicModels<LedgerEntryModel> ledgerEntryModels2;
  // Models for LedgerEntry dynamic component.
  late FlutterFlowDynamicModels<LedgerEntryModel> ledgerEntryModels3;

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

  final _allManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> all({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _allManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllCache() => _allManager.clear();
  void clearAllCacheKey(String? uniqueKey) =>
      _allManager.clearRequest(uniqueKey);

  final _thisMonthManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> thisMonth({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _thisMonthManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearThisMonthCache() => _thisMonthManager.clear();
  void clearThisMonthCacheKey(String? uniqueKey) =>
      _thisMonthManager.clearRequest(uniqueKey);

  final _clearedManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cleared({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _clearedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearClearedCache() => _clearedManager.clear();
  void clearClearedCacheKey(String? uniqueKey) =>
      _clearedManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    ledgerEntryModels1 = FlutterFlowDynamicModels(() => LedgerEntryModel());
    ledgerEntryModels2 = FlutterFlowDynamicModels(() => LedgerEntryModel());
    ledgerEntryModels3 = FlutterFlowDynamicModels(() => LedgerEntryModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    ledgerEntryModels1.dispose();
    ledgerEntryModels2.dispose();
    ledgerEntryModels3.dispose();

    /// Dispose query cache managers for this widget.

    clearTotalSpentCache();

    clearSafeToSpendCache();

    clearAllCache();

    clearThisMonthCache();

    clearClearedCache();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/components/filter_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'ledger_widget.dart' show LedgerWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class LedgerModel extends FlutterFlowModel<LedgerWidget> {
  ///  Local state fields for this page.

  String? householdId;

  bool? filterButtonPressed = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for HouseholdIdDropDown widget.
  String? householdIdDropDownValue;
  FormFieldController<String>? householdIdDropDownValueController;
  // Model for Filter component.
  late FilterModel filterModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

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
    filterModel.dispose();
    listViewPagingController?.dispose();

    /// Dispose query cache managers for this widget.

    clearTotalSpentCache();

    clearSafeToSpendCache();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewGetLedgerAllPage);
  }

  void listViewGetLedgerAllPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewGetLedgerAllResponse) {
        final pageItems = (TppbGroup.getLedgerAllCall.list(
                  listViewGetLedgerAllResponse.jsonBody,
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewGetLedgerAllResponse,
                )
              : null,
        );
      });
}

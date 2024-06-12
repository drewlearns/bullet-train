import '/flutter_flow/flutter_flow_util.dart';
import '/pages/ledger/search_transactions/search_transactions_widget.dart';
import 'query_transactions_widget.dart' show QueryTransactionsWidget;
import 'package:flutter/material.dart';

class QueryTransactionsModel extends FlutterFlowModel<QueryTransactionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchTransactions component.
  late SearchTransactionsModel searchTransactionsModel;

  @override
  void initState(BuildContext context) {
    searchTransactionsModel =
        createModel(context, () => SearchTransactionsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchTransactionsModel.dispose();
  }
}

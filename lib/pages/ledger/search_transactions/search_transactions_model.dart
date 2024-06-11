import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_transactions_widget.dart' show SearchTransactionsWidget;
import 'package:flutter/material.dart';

class SearchTransactionsModel
    extends FlutterFlowModel<SearchTransactionsWidget> {
  ///  Local state fields for this component.

  bool? searchButtonPressed = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (searchTransactions)] action in Button widget.
  ApiCallResponse? searchTransactionsOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

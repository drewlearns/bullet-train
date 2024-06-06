import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_details_widget.dart' show TransactionDetailsWidget;
import 'package:flutter/material.dart';

class TransactionDetailsModel
    extends FlutterFlowModel<TransactionDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTransaction)] action in TransactionDetails widget.
  ApiCallResponse? getTransactionOutput;
  // Stores action output result for [Backend Call - API (getFilePath)] action in TransactionDetails widget.
  ApiCallResponse? getFilePathOutput;
  // Stores action output result for [Backend Call - API (getBill)] action in TransactionDetails widget.
  ApiCallResponse? getBillOutput;
  // Stores action output result for [Backend Call - API (getIncome)] action in TransactionDetails widget.
  ApiCallResponse? getIncomeOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

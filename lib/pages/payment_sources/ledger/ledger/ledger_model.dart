import '/backend/api_requests/api_calls.dart';
import '/components/transaction_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ledger_widget.dart' show LedgerWidget;
import 'package:flutter/material.dart';

class LedgerModel extends FlutterFlowModel<LedgerWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getHousehold)] action in Ledger widget.
  ApiCallResponse? ledgerGetHouseholdOutput;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for TransactionBlock component.
  late TransactionBlockModel transactionBlockModel;

  @override
  void initState(BuildContext context) {
    transactionBlockModel = createModel(context, () => TransactionBlockModel());
  }

  @override
  void dispose() {
    transactionBlockModel.dispose();
  }
}

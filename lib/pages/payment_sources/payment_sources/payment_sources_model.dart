import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'payment_sources_widget.dart' show PaymentSourcesWidget;
import 'package:flutter/material.dart';

class PaymentSourcesModel extends FlutterFlowModel<PaymentSourcesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (getHousehold)] action in DropDown widget.
  ApiCallResponse? apiResult37n;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

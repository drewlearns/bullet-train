import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'incomes_widget.dart' show IncomesWidget;
import 'package:flutter/material.dart';

class IncomesModel extends FlutterFlowModel<IncomesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isItRfreshTokenTimeYet] action in Incomes widget.
  bool? refreshTokenTiime;
  // Stores action output result for [Backend Call - API (refreshToken)] action in Incomes widget.
  ApiCallResponse? apiResulth4p;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (refreshToken)] action in DropDown widget.
  ApiCallResponse? apiResultmgb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

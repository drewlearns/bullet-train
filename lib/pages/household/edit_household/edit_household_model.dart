import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_household_widget.dart' show EditHouseholdWidget;
import 'package:flutter/material.dart';

class EditHouseholdModel extends FlutterFlowModel<EditHouseholdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GetHouseholdDropDown widget.
  String? getHouseholdDropDownValue;
  FormFieldController<String>? getHouseholdDropDownValueController;
  // Stores action output result for [Backend Call - API (refreshToken)] action in GetHouseholdDropDown widget.
  ApiCallResponse? refreshTokenOutput;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (editHousehold)] action in Button widget.
  ApiCallResponse? apiResultf9h;
  // Stores action output result for [Backend Call - API (deleteHousehold)] action in IconButton widget.
  ApiCallResponse? apiResultr5r;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

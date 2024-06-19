import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'export_widget.dart' show ExportWidget;
import 'package:flutter/material.dart';

class ExportModel extends FlutterFlowModel<ExportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for HouseholdIdDropdown widget.
  String? householdIdDropdownValue;
  FormFieldController<String>? householdIdDropdownValueController;
  // Stores action output result for [Backend Call - API (refreshToken)] action in HouseholdIdDropdown widget.
  ApiCallResponse? apiResultmgb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

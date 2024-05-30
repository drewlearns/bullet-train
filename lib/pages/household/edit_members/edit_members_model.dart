import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_members_widget.dart' show EditMembersWidget;
import 'package:flutter/material.dart';

class EditMembersModel extends FlutterFlowModel<EditMembersWidget> {
  ///  Local state fields for this page.

  bool? selectedMembersDelete;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (getHouseholdMembers)] action in DropDown widget.
  ApiCallResponse? apiResult37n;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();
  // Stores action output result for [Backend Call - API (deleteMemberFromHousehold)] action in IconButton widget.
  ApiCallResponse? deleteMemberFromHouseholdOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

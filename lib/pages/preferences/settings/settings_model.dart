import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getUser)] action in EditProfileContainer widget.
  ApiCallResponse? getUserOutput;
  // Stores action output result for [Backend Call - API (getUser)] action in invitationsContainer widget.
  ApiCallResponse? getUserOutput4;
  // Stores action output result for [Backend Call - API (getUser)] action in editMembersContainer widget.
  ApiCallResponse? getUserOutput1;
  // Stores action output result for [Backend Call - API (getHousehold)] action in editMembersContainer widget.
  ApiCallResponse? getHouseholdOutput1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

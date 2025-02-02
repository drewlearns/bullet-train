import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delete_user_widget.dart' show DeleteUserWidget;
import 'package:flutter/material.dart';

class DeleteUserModel extends FlutterFlowModel<DeleteUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (deleteUser.js)] action in Button widget.
  ApiCallResponse? apiResultgib;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

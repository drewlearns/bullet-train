import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getUser)] action in contentView_1 widget.
  ApiCallResponse? getUserOutput;
  // Stores action output result for [Backend Call - API (getUser)] action in contentView_1 widget.
  ApiCallResponse? getUserOutput2;
  // Stores action output result for [Backend Call - API (getUser)] action in contentView_1 widget.
  ApiCallResponse? getUserOutput1;
  // Stores action output result for [Backend Call - API (getHousehold)] action in contentView_1 widget.
  ApiCallResponse? getHouseholdOutput1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

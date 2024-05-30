import '/flutter_flow/flutter_flow_util.dart';
import 'add_income_widget.dart' show AddIncomeWidget;
import 'package:flutter/material.dart';

class AddIncomeModel extends FlutterFlowModel<AddIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

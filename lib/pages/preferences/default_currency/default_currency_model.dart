import '/flutter_flow/flutter_flow_util.dart';
import 'default_currency_widget.dart' show DefaultCurrencyWidget;
import 'package:flutter/material.dart';

class DefaultCurrencyModel extends FlutterFlowModel<DefaultCurrencyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

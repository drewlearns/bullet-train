import '/flutter_flow/flutter_flow_util.dart';
import 'payment_source_details_widget.dart' show PaymentSourceDetailsWidget;
import 'package:flutter/material.dart';

class PaymentSourceDetailsModel
    extends FlutterFlowModel<PaymentSourceDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

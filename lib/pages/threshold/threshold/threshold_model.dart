import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'threshold_widget.dart' show ThresholdWidget;
import 'package:flutter/material.dart';

class ThresholdModel extends FlutterFlowModel<ThresholdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for householdIdDropDown widget.
  String? householdIdDropDownValue;
  FormFieldController<String>? householdIdDropDownValueController;
  // State field(s) for paymentSourceIdDropDown widget.
  String? paymentSourceIdDropDownValue;
  FormFieldController<String>? paymentSourceIdDropDownValueController;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - API (getThresholdBreakers)] action in Button widget.
  ApiCallResponse? thresholdBreakersOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

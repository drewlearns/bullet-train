import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_bill_widget.dart' show AddBillWidget;
import 'package:flutter/material.dart';

class AddBillModel extends FlutterFlowModel<AddBillWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaymentSourceField widget.
  String? paymentSourceFieldValue;
  FormFieldController<String>? paymentSourceFieldValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for CategoryField widget.
  FocusNode? categoryFieldFocusNode;
  TextEditingController? categoryFieldTextController;
  String? Function(BuildContext, String?)? categoryFieldTextControllerValidator;
  // State field(s) for DayOfMonthDropDown widget.
  String? dayOfMonthDropDownValue;
  FormFieldController<String>? dayOfMonthDropDownValueController;
  // State field(s) for FrequencyDropDown widget.
  String? frequencyDropDownValue;
  FormFieldController<String>? frequencyDropDownValueController;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  // State field(s) for UrlField widget.
  FocusNode? urlFieldFocusNode;
  TextEditingController? urlFieldTextController;
  String? Function(BuildContext, String?)? urlFieldTextControllerValidator;
  // State field(s) for UsernameField widget.
  FocusNode? usernameFieldFocusNode;
  TextEditingController? usernameFieldTextController;
  String? Function(BuildContext, String?)? usernameFieldTextControllerValidator;
  // State field(s) for PasswordFiel widget.
  FocusNode? passwordFielFocusNode;
  TextEditingController? passwordFielTextController;
  late bool passwordFielVisibility;
  String? Function(BuildContext, String?)? passwordFielTextControllerValidator;
  // Stores action output result for [Backend Call - API (addBill)] action in Button widget.
  ApiCallResponse? addBillOutput1;
  // Stores action output result for [Backend Call - API (refreshToken)] action in Button widget.
  ApiCallResponse? apiResult6hu1;
  // Stores action output result for [Backend Call - API (addBill)] action in Button widget.
  ApiCallResponse? addBillOutput;

  @override
  void initState(BuildContext context) {
    passwordFielVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    categoryFieldFocusNode?.dispose();
    categoryFieldTextController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();

    urlFieldFocusNode?.dispose();
    urlFieldTextController?.dispose();

    usernameFieldFocusNode?.dispose();
    usernameFieldTextController?.dispose();

    passwordFielFocusNode?.dispose();
    passwordFielTextController?.dispose();
  }
}

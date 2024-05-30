import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'password_reset_code_widget.dart' show PasswordResetCodeWidget;
import 'package:flutter/material.dart';

class PasswordResetCodeModel extends FlutterFlowModel<PasswordResetCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? textFieldSelectedOption;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (confirmPasswordResetCode)] action in Button widget.
  ApiCallResponse? confirmSignupOutput;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    textFieldFocusNode?.dispose();
  }
}

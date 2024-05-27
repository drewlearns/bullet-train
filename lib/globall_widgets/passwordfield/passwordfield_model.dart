import '/flutter_flow/flutter_flow_util.dart';
import 'passwordfield_widget.dart' show PasswordfieldWidget;
import 'package:flutter/material.dart';

class PasswordfieldModel extends FlutterFlowModel<PasswordfieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for passwordSignUp widget.
  FocusNode? passwordSignUpFocusNode;
  TextEditingController? passwordSignUpTextController;
  late bool passwordSignUpVisibility;
  String? Function(BuildContext, String?)?
      passwordSignUpTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordSignUpVisibility = false;
  }

  @override
  void dispose() {
    passwordSignUpFocusNode?.dispose();
    passwordSignUpTextController?.dispose();
  }
}

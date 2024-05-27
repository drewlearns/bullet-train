import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/globall_widgets/passwordfield/passwordfield_widget.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailSignUp widget.
  FocusNode? emailSignUpFocusNode;
  TextEditingController? emailSignUpTextController;
  String? Function(BuildContext, String?)? emailSignUpTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // Model for passwordfield component.
  late PasswordfieldModel passwordfieldModel;
  // State field(s) for mailOptIn widget.
  bool? mailOptInValue;
  // Stores action output result for [Backend Call - API (addUser)] action in Button widget.
  ApiCallResponse? signUpOutput;
  // State field(s) for emailAddressSignIn widget.
  FocusNode? emailAddressSignInFocusNode;
  TextEditingController? emailAddressSignInTextController;
  String? Function(BuildContext, String?)?
      emailAddressSignInTextControllerValidator;
  // State field(s) for passwordSignin widget.
  FocusNode? passwordSigninFocusNode;
  TextEditingController? passwordSigninTextController;
  late bool passwordSigninVisibility;
  String? Function(BuildContext, String?)?
      passwordSigninTextControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? loginOutput;

  @override
  void initState(BuildContext context) {
    passwordfieldModel = createModel(context, () => PasswordfieldModel());
    passwordSigninVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailSignUpFocusNode?.dispose();
    emailSignUpTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    passwordfieldModel.dispose();
    emailAddressSignInFocusNode?.dispose();
    emailAddressSignInTextController?.dispose();

    passwordSigninFocusNode?.dispose();
    passwordSigninTextController?.dispose();
  }
}

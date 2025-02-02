import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/globall_widgets/passwordfield/passwordfield_widget.dart';
import 'accept_invite_widget.dart' show AcceptInviteWidget;
import 'package:flutter/material.dart';

class AcceptInviteModel extends FlutterFlowModel<AcceptInviteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for invitationCode widget.
  FocusNode? invitationCodeFocusNode;
  TextEditingController? invitationCodeTextController;
  String? Function(BuildContext, String?)?
      invitationCodeTextControllerValidator;
  // State field(s) for emailSignUp widget.
  FocusNode? emailSignUpFocusNode;
  TextEditingController? emailSignUpTextController;
  String? Function(BuildContext, String?)? emailSignUpTextControllerValidator;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // Model for passwordfield component.
  late PasswordfieldModel passwordfieldModel;
  // State field(s) for mailOptIn widget.
  bool? mailOptInValue;
  // Stores action output result for [Backend Call - API (acceptInvite)] action in Button widget.
  ApiCallResponse? acceptInviteOutput;

  @override
  void initState(BuildContext context) {
    passwordfieldModel = createModel(context, () => PasswordfieldModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    invitationCodeFocusNode?.dispose();
    invitationCodeTextController?.dispose();

    emailSignUpFocusNode?.dispose();
    emailSignUpTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    passwordfieldModel.dispose();
  }
}

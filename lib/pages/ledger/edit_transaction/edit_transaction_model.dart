import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_transaction_widget.dart' show EditTransactionWidget;
import 'package:flutter/material.dart';

class EditTransactionModel extends FlutterFlowModel<EditTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for AmountField widget.
  FocusNode? amountFieldFocusNode;
  TextEditingController? amountFieldTextController;
  String? Function(BuildContext, String?)? amountFieldTextControllerValidator;
  // State field(s) for TransactionDateField widget.
  FocusNode? transactionDateFieldFocusNode;
  TextEditingController? transactionDateFieldTextController;
  String? Function(BuildContext, String?)?
      transactionDateFieldTextControllerValidator;
  // State field(s) for TagsField widget.
  FocusNode? tagsFieldFocusNode;
  TextEditingController? tagsFieldTextController;
  String? Function(BuildContext, String?)? tagsFieldTextControllerValidator;
  // State field(s) for CategoryField widget.
  FocusNode? categoryFieldFocusNode;
  TextEditingController? categoryFieldTextController;
  String? Function(BuildContext, String?)? categoryFieldTextControllerValidator;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  // State field(s) for TypeDropDown widget.
  String? typeDropDownValue;
  FormFieldController<String>? typeDropDownValueController;
  // State field(s) for StatusDropDown widget.
  bool? statusDropDownValue;
  FormFieldController<bool>? statusDropDownValueController;
  // State field(s) for WalletDropDown widget.
  String? walletDropDownValue;
  FormFieldController<String>? walletDropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - imageToBase64String] action in Image widget.
  String? fileUploaded;
  // Stores action output result for [Backend Call - API (editTransaction)] action in Button widget.
  ApiCallResponse? editTransactionOutput;
  // Stores action output result for [Backend Call - API (deleteTransaction)] action in IconButton widget.
  ApiCallResponse? deleteTransaction;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    amountFieldFocusNode?.dispose();
    amountFieldTextController?.dispose();

    transactionDateFieldFocusNode?.dispose();
    transactionDateFieldTextController?.dispose();

    tagsFieldFocusNode?.dispose();
    tagsFieldTextController?.dispose();

    categoryFieldFocusNode?.dispose();
    categoryFieldTextController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();
  }
}

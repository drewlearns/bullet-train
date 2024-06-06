import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ledger_widget.dart' show LedgerWidget;
import 'package:flutter/material.dart';

class LedgerModel extends FlutterFlowModel<LedgerWidget> {
  ///  Local state fields for this page.

  List<String> transactionNames = [];
  void addToTransactionNames(String item) => transactionNames.add(item);
  void removeFromTransactionNames(String item) => transactionNames.remove(item);
  void removeAtIndexFromTransactionNames(int index) =>
      transactionNames.removeAt(index);
  void insertAtIndexInTransactionNames(int index, String item) =>
      transactionNames.insert(index, item);
  void updateTransactionNamesAtIndex(int index, Function(String) updateFn) =>
      transactionNames[index] = updateFn(transactionNames[index]);

  List<String> amounts = [];
  void addToAmounts(String item) => amounts.add(item);
  void removeFromAmounts(String item) => amounts.remove(item);
  void removeAtIndexFromAmounts(int index) => amounts.removeAt(index);
  void insertAtIndexInAmounts(int index, String item) =>
      amounts.insert(index, item);
  void updateAmountsAtIndex(int index, Function(String) updateFn) =>
      amounts[index] = updateFn(amounts[index]);

  List<String> transactionType = [];
  void addToTransactionType(String item) => transactionType.add(item);
  void removeFromTransactionType(String item) => transactionType.remove(item);
  void removeAtIndexFromTransactionType(int index) =>
      transactionType.removeAt(index);
  void insertAtIndexInTransactionType(int index, String item) =>
      transactionType.insert(index, item);
  void updateTransactionTypeAtIndex(int index, Function(String) updateFn) =>
      transactionType[index] = updateFn(transactionType[index]);

  List<DateTime> dates = [];
  void addToDates(DateTime item) => dates.add(item);
  void removeFromDates(DateTime item) => dates.remove(item);
  void removeAtIndexFromDates(int index) => dates.removeAt(index);
  void insertAtIndexInDates(int index, DateTime item) =>
      dates.insert(index, item);
  void updateDatesAtIndex(int index, Function(DateTime) updateFn) =>
      dates[index] = updateFn(dates[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_block_widget.dart' show TransactionBlockWidget;
import 'package:flutter/material.dart';

class TransactionBlockModel extends FlutterFlowModel<TransactionBlockWidget> {
  ///  Local state fields for this component.

  List<String> name = [];
  void addToName(String item) => name.add(item);
  void removeFromName(String item) => name.remove(item);
  void removeAtIndexFromName(int index) => name.removeAt(index);
  void insertAtIndexInName(int index, String item) => name.insert(index, item);
  void updateNameAtIndex(int index, Function(String) updateFn) =>
      name[index] = updateFn(name[index]);

  List<double> amount = [];
  void addToAmount(double item) => amount.add(item);
  void removeFromAmount(double item) => amount.remove(item);
  void removeAtIndexFromAmount(int index) => amount.removeAt(index);
  void insertAtIndexInAmount(int index, double item) =>
      amount.insert(index, item);
  void updateAmountAtIndex(int index, Function(double) updateFn) =>
      amount[index] = updateFn(amount[index]);

  List<DateTime> date = [];
  void addToDate(DateTime item) => date.add(item);
  void removeFromDate(DateTime item) => date.remove(item);
  void removeAtIndexFromDate(int index) => date.removeAt(index);
  void insertAtIndexInDate(int index, DateTime item) =>
      date.insert(index, item);
  void updateDateAtIndex(int index, Function(DateTime) updateFn) =>
      date[index] = updateFn(date[index]);

  List<String> type = [];
  void addToType(String item) => type.add(item);
  void removeFromType(String item) => type.remove(item);
  void removeAtIndexFromType(int index) => type.removeAt(index);
  void insertAtIndexInType(int index, String item) => type.insert(index, item);
  void updateTypeAtIndex(int index, Function(String) updateFn) =>
      type[index] = updateFn(type[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

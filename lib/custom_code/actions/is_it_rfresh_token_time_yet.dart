// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> isItRfreshTokenTimeYet(String? expiresAt) async {
  // Determine if expiresAt is less than now, if so return true, if not return false
  if (expiresAt == null) {
    return false;
  }
  DateTime now = DateTime.now();
  DateTime expirationTime = DateTime.parse(expiresAt);
  if (expirationTime.isBefore(now)) {
    return true;
  } else {
    return false;
  }
}

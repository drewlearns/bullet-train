// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> updateExpiresAtAction(BuildContext context) async {
  // Fetching the expiresIn value from the app state
  final int expiresIn = FFAppState().expiresIn;

  // Getting the current time
  final DateTime currentTime = DateTime.now();

  // Adding expiresIn to the current time
  final DateTime expiresAt = currentTime.add(Duration(seconds: expiresIn));

  // Updating the app state with the new expiresAt value
  FFAppState().update(() {
    FFAppState().expiresAt = expiresAt;
  });
}

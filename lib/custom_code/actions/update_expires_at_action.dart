// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateExpiresAtAction(BuildContext context) async {
  // Retrieve the expiresIn value from the appState
  final expiresIn = FFAppState().expiresIn;

  // Get the current time
  final DateTime currentTime = DateTime.now();

  // Subtract 100 seconds from the current time
  final DateTime adjustedTime = currentTime.subtract(Duration(seconds: 100));

  // Add the expiresIn value to the adjusted time
  final DateTime expiresAt = adjustedTime.add(Duration(seconds: expiresIn));

  // Print or return the calculated expiresAt time
  print('Expires At: $expiresAt');

  // Update appState or perform further actions as needed
  FFAppState().expiresAt = expiresAt;
}

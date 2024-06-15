import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

DateTime? updateExpireAtAction() {
  Future updateExpiresAtAction(BuildContext context) async {
    // Retrieve the expiresIn value from the appState

    // Get the current time
    final DateTime currentTime = DateTime.now();

    // Add the expiresIn value to the adjusted time
    final DateTime expiresAt = currentTime.add(Duration(seconds: 3600));

    // Print or return the calculated expiresAt time
    print('Expires At: $expiresAt');
  }
}

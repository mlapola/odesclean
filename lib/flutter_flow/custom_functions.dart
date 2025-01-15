import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

DateTime formatdate(
  String date,
  String hour,
) {
  // Combine date and hour into a single string
  String dateTimeString = '$date $hour';

  // Parse the combined string into a DateTime object using the correct format
  DateTime dateTime = DateFormat("dd/MM/yyyy HH:mm").parse(dateTimeString);

  // Return the adjusted DateTime object
  return dateTime;
}

List<String>? returnlist(List<String> inputs) {
  // Check if inputs is null, return ["Todos"] if it is
  if (inputs == null || inputs.isEmpty) {
    return ["Todos"];
  }

  // Remove duplicates by converting to a Set and back to a List
  List<String> uniqueItems = inputs.toSet().toList();

  // Sort the list alphabetically (optional)
  uniqueItems.sort();

  // Add "Todos" at the beginning of the list
  uniqueItems.insert(0, "Todos");

  return uniqueItems;
}

String? uppercase(String? text) {
  // uppercase the text and remove begin spaces and last spaces
  if (text == null) {
    return null;
  }

  // Uppercase the text
  String uppercasedText = text.toUpperCase();

  // Remove leading and trailing spaces
  String trimmedText = uppercasedText.trim();

  return trimmedText;
}

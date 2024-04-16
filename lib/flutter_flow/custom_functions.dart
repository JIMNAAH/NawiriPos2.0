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

double cartSumtotal(List<dynamic> cartItems) {
  // Calculate the total price of items from the json argument, eg{"quantity":2,"sPrice":25}.
  double sum = 0.0;
  for (var item in cartItems) {
    if (item is Map<String, dynamic>) {
      final quantity = item['quantity'] ?? 0;
      final sPrice = item['sPrice'] ?? 0.0;
      sum += quantity * sPrice;
    }
  }
  return sum;
}

double balance(
  double? sumTotal,
  double? userInput,
  double? mobileMoney,
  double? bank,
) {
  // Find the balance of the sumTotal from the userInput, mobileMoney, and bank
  if (sumTotal == null ||
      userInput == null ||
      mobileMoney == null ||
      bank == null) {
    return 0.0;
  }

  double totalPayment = userInput + mobileMoney + bank;
  return math.max(0, sumTotal - totalPayment);
}

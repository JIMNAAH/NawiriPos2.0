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
import '/backend/sqlite/sqlite_manager.dart';

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

double? sumTotal(List<GetCartRow> total) {
  // calculate sum of quantity and sPrice for the cart items
  double sum = 0;
  for (var item in total) {
    sum += item.quantity * item.sPrice;
  }
  return sum;
}

double? calculateTotal(List<GetCartRow> items) {
  double total = 0.0; // Initialize total as a double
  for (var item in items) {
    int quantity = item.quantity; // Access quantity property directly
    double sPrice = item.sPrice; // Access price property directly
    total += quantity * sPrice;
  }
  return total;
}

List<dynamic> convertToJson(List<GetCartRow> sqlitedata) {
  // convert sqlite row data into json data
  List<dynamic> jsonData = [];

  for (var row in sqlitedata) {
    Map<String, dynamic> data = {
      'location_product_id': row.productid,
      'location_product_description': row.productName,
      'sPrice': row.sPrice,
      'quantity': row.quantity,
    };
    jsonData.add(data);
  }

  return jsonData;
}

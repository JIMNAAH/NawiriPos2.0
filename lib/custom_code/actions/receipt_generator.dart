// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:permission_handler/permission_handler.dart';

Future<String> receiptGenerator(List<dynamic> receiptDetails) async {
  // Add your function code here!
  try {
    final pdf = pw.Document();

    // Add a page to the PDF document
    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Add your receipt header here (similar to the Flutter code)
              pw.Container(
                margin: pw.EdgeInsets.all(16),
                padding: pw.EdgeInsets.all(16),
                decoration: pw.BoxDecoration(
                  color: PdfColors.grey300,
                  borderRadius: pw.BorderRadius.circular(12),
                ),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'SOFTBYTE  TECHNOLOGIES',
                      style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    // Add more header details as needed
                  ],
                ),
              ),

              // Add receipt details dynamically
              pw.Table.fromTextArray(
                context: context,
                data: <List<String>>[
                  <String>['#', 'Descriptions', 'Qty', 'Amount'],
                  for (var receiptDetail in receiptDetails)
                    [
                      '1', // Assuming '1' for simplicity, replace with actual item number
                      receiptDetail['productName'] ?? 'No Product Name',
                      receiptDetail['quantity'].toString() ?? 'No Quantity',
                      receiptDetail['sPrice'].toString() ?? 'No Amount',
                    ],
                ],
              ),

              // Add total amount
              pw.Container(
                margin: pw.EdgeInsets.only(top: 16),
                alignment: pw.Alignment.centerRight,
                child: pw.Text(
                  'Total Amount: ${formatNumber(
                    cartSumtotal(receiptDetails),
                    formatType: FormatType.decimal,
                    decimalType: DecimalType.periodDecimal,
                  )}',
                  style: pw.TextStyle(
                    fontSize: 18,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),

              // Add more sections as needed
            ],
          );
        },
      ),
    );

    // Request permission to write to the external storage
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
    }

    if (status.isGranted) {
      final directory = await getExternalStorageDirectory();
      if (directory != null) {
        final String pdfPath = '${directory.path}/receipt.pdf';
        final File file = File(pdfPath);

        await file.writeAsBytes(await pdf.save());
        print('PDF saved at $pdfPath');
        return pdfPath;
      } else {
        print('External storage directory not found');
        return 'External storage directory not found';
      }
    } else {
      print('Permission to write in external storage not granted');
      return 'Permission to write in external storage not granted';
    }
  } catch (e) {
    print('Error generating PDF: $e');
    return ''; // Return an empty string or handle the error as needed
  }
}

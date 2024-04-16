// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
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

Future<String> generateCustomerReport(List<dynamic> customerDetails) async {
  try {
    final pdf = pw.Document();
    final customers = customerDetails.cast<Map<String, dynamic>>();

    pdf.addPage(
      pw.MultiPage(
        build: (context) => [
          pw.Table.fromTextArray(
            context: context,
            data: <List<String>>[
              <String>['Name', 'Address', 'Phone'],
              ...customers.map((customer) {
                print('Adding customer: $customer'); // Logging each customer
                return [
                  customer['customer_name'] ??
                      'No Name', // Provide a default value if null
                  customer['customer_address']?.toString() ??
                      'No Address', // Call toString() in case it's not a string and provide a default value if null
                  customer['customer_phone_no']?.toString() ?? 'No Phone',
                ];
              }),
            ],
          ),
        ],
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
        final String pdfPath = '${directory.path}/report.pdf';
        final File file = File(pdfPath);

        await file.writeAsBytes(await pdf.save());
        print('PDF saved at $pdfPath');
        return pdfPath;
      } else {
        print('External storage directory not found');
        return 'External storage directory not found'; // Return a non-null String
      }
    } else {
      print('Permission to write in external storage not granted');
      return 'Permission to write in external storage not granted'; // Return a non-null String
    }
  } catch (e) {
    print('Error generating PDF: $e'); // Log the error
    return ''; // Return an empty string or handle the error as needed
  }
}

// Define the arguments and return type
//@FFArgument([FFArgumentType.List])
//@FFReturnType(FFReturnType.String)
Future<String> myCustomAction(List<Map<String, dynamic>> customers) async {
  // Call the PDF generation function
  String pdfPath = await generateCustomerReport(customers);

  // Additional actions can be performed here, such as uploading to Firebase

  // Return the PDF file path
  return pdfPath;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

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

import 'package:path_provider/path_provider.dart';

import 'dart:io';
import 'package:path/path.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';

Future<void> createSimplePDF() async {
  // Get the temporary directory using path_provider
  final Directory tempDir = await getTemporaryDirectory();
  final String tempDirPath = tempDir.path;

  // Create a PDF document
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Center(
        child: pw.Text("Hello World"),
      );
    },
  ));

  // Save the PDF to a temporary file
  var tempPath;
  final String pdfPath = "$tempPath/example.pdf";
  final File file = File(pdfPath);
  await file.writeAsBytes(await pdf.save());

  // Open the saved PDF file using open_file package
  OpenFile.open(pdfPath);
}

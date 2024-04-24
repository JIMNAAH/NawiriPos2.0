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

Future simplePdf() async {
  // Add your function code here!
  // Get the temporary directory using path_provider
  final Directory tempDir = await getTemporaryDirectory();
  final String pdfPath = '${tempDir.path}/example.pdf';

  // Create a PDF document
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text("Hello World"),
        );
      },
    ),
  );

  // Save the PDF to a temporary file
  final File file = File(pdfPath);
  await file.writeAsBytes(await pdf.save());

  // Open the saved PDF file using open_file package
  OpenFile.open(pdfPath);
}

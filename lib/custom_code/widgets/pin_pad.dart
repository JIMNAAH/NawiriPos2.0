// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: unused_local_variable

import 'package:pin_plus_keyboard/package/controllers/pin_input_controller.dart';
import 'package:pin_plus_keyboard/pin_plus_keyboard.dart';

class PinPad extends StatefulWidget {
  const PinPad({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<PinPad> createState() => _PinPadState();
}

class _PinPadState extends State<PinPad> {
  PinInputController pinInputController = PinInputController(length: 6);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PinPlusKeyBoardPackage(
      spacing: size.height * 0.02,
      pinInputController: pinInputController,
      inputFillColor: Colors.white,
      buttonFillColor: Colors.green,
      btnTextColor: Colors.black,
      onSubmit: () {
        /// ignore: avoid_print
        print("Text is : " + pinInputController.text);
      },
      keyboardFontFamily: '',
    );
  }
}

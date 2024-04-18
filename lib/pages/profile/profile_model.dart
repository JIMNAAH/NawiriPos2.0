import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for bussinaessName widget.
  FocusNode? bussinaessNameFocusNode;
  TextEditingController? bussinaessNameTextController;
  String? Function(BuildContext, String?)?
      bussinaessNameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for till widget.
  FocusNode? tillFocusNode;
  TextEditingController? tillTextController;
  String? Function(BuildContext, String?)? tillTextControllerValidator;
  // State field(s) for recieptFooter widget.
  FocusNode? recieptFooterFocusNode;
  TextEditingController? recieptFooterTextController;
  String? Function(BuildContext, String?)? recieptFooterTextControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    bussinaessNameFocusNode?.dispose();
    bussinaessNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    tillFocusNode?.dispose();
    tillTextController?.dispose();

    recieptFooterFocusNode?.dispose();
    recieptFooterTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}

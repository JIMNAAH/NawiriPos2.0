import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for bussinaessName widget.
  FocusNode? bussinaessNameFocusNode;
  TextEditingController? bussinaessNameController;
  String? Function(BuildContext, String?)? bussinaessNameControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for till widget.
  FocusNode? tillFocusNode;
  TextEditingController? tillController;
  String? Function(BuildContext, String?)? tillControllerValidator;
  // State field(s) for recieptFooter widget.
  FocusNode? recieptFooterFocusNode;
  TextEditingController? recieptFooterController;
  String? Function(BuildContext, String?)? recieptFooterControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    bussinaessNameFocusNode?.dispose();
    bussinaessNameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    locationFocusNode?.dispose();
    locationController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    tillFocusNode?.dispose();
    tillController?.dispose();

    recieptFooterFocusNode?.dispose();
    recieptFooterController?.dispose();

    usernameFocusNode?.dispose();
    usernameController?.dispose();
  }
}

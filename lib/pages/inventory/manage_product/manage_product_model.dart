import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'manage_product_widget.dart' show ManageProductWidget;
import 'package:flutter/material.dart';

class ManageProductModel extends FlutterFlowModel<ManageProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for retailPrice widget.
  FocusNode? retailPriceFocusNode;
  TextEditingController? retailPriceTextController;
  String? Function(BuildContext, String?)? retailPriceTextControllerValidator;
  // State field(s) for wholesaleMargin widget.
  FocusNode? wholesaleMarginFocusNode;
  TextEditingController? wholesaleMarginTextController;
  String? Function(BuildContext, String?)?
      wholesaleMarginTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - API (SaveProduct)] action in Button widget.
  ApiCallResponse? apiResult45y;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    retailPriceFocusNode?.dispose();
    retailPriceTextController?.dispose();

    wholesaleMarginFocusNode?.dispose();
    wholesaleMarginTextController?.dispose();
  }
}

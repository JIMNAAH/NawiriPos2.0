import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'customer_report_widget.dart' show CustomerReportWidget;
import 'package:flutter/material.dart';

class CustomerReportModel extends FlutterFlowModel<CustomerReportWidget> {
  ///  Local state fields for this page.

  List<dynamic> customerList = [];
  void addToCustomerList(dynamic item) => customerList.add(item);
  void removeFromCustomerList(dynamic item) => customerList.remove(item);
  void removeAtIndexFromCustomerList(int index) => customerList.removeAt(index);
  void insertAtIndexInCustomerList(int index, dynamic item) =>
      customerList.insert(index, item);
  void updateCustomerListAtIndex(int index, Function(dynamic) updateFn) =>
      customerList[index] = updateFn(customerList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetCustomers)] action in Column widget.
  ApiCallResponse? apiResultc8d;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shift_sales_model.dart';
export 'shift_sales_model.dart';

class ShiftSalesWidget extends StatefulWidget {
  const ShiftSalesWidget({super.key});

  @override
  State<ShiftSalesWidget> createState() => _ShiftSalesWidgetState();
}

class _ShiftSalesWidgetState extends State<ShiftSalesWidget> {
  late ShiftSalesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShiftSalesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF054D3B),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('HomePage');
                  },
                  child: const Icon(
                    Icons.keyboard_backspace,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              Text(
                'Shift Sales',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Print',
                      icon: const Icon(
                        Icons.print,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 120.0,
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF054D3B),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Download',
                      icon: const Icon(
                        Icons.download_rounded,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF054D3B),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Supplier Report',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final sdd = FFAppState().cart.toList();
                        return FlutterFlowDataTable<CartStruct>(
                          controller: _model.paginatedDataTableController,
                          data: sdd,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'ID',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Name',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Phone',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Balance',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                          dataRowBuilder:
                              (sddItem, sddIndex, selected, onSelectChanged) =>
                                  DataRow(
                            color: MaterialStateProperty.all(
                              sddIndex % 2 == 0
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                            ),
                            cells: [
                              Text(
                                '1',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              Text(
                                'Name',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              Text(
                                'Phone',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              Text(
                                'Balance',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ].map((c) => DataCell(c)).toList(),
                          ),
                          paginated: true,
                          selectable: false,
                          hidePaginator: true,
                          showFirstLastButtons: false,
                          headingRowHeight: 50.0,
                          dataRowHeight: 45.0,
                          columnSpacing: 10.0,
                          headingRowColor:
                              FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(8.0),
                          addHorizontalDivider: true,
                          addTopAndBottomDivider: true,
                          hideDefaultHorizontalDivider: false,
                          horizontalDividerColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          horizontalDividerThickness: 1.0,
                          addVerticalDivider: true,
                          verticalDividerColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          verticalDividerThickness: 1.0,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

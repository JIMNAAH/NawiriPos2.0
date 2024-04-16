import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'suppliers_model.dart';
export 'suppliers_model.dart';

class SuppliersWidget extends StatefulWidget {
  const SuppliersWidget({super.key});

  @override
  State<SuppliersWidget> createState() => _SuppliersWidgetState();
}

class _SuppliersWidgetState extends State<SuppliersWidget> {
  late SuppliersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuppliersModel());

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
                'Suppliers',
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'Manage_supplier',
                            queryParameters: {
                              'supplierName': serializeParam(
                                '',
                                ParamType.String,
                              ),
                              'bankAccount': serializeParam(
                                0,
                                ParamType.int,
                              ),
                              'kraPin': serializeParam(
                                '',
                                ParamType.String,
                              ),
                              'address': serializeParam(
                                '',
                                ParamType.String,
                              ),
                              'phoneNumber': serializeParam(
                                '',
                                ParamType.String,
                              ),
                              'contactPerson': serializeParam(
                                0,
                                ParamType.int,
                              ),
                              'supplierID': serializeParam(
                                '0',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Add Supplier',
                        options: FFButtonOptions(
                          width: 190.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Suppliers',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: Colors.black,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FutureBuilder<ApiCallResponse>(
                        future: NawiriPOSGroup.nwGetSuppliersCall.call(
                          branchId: FFAppState().branchID,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final listViewNwGetSuppliersResponse = snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final getSuppliers =
                                  listViewNwGetSuppliersResponse.jsonBody
                                      .toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: getSuppliers.length,
                                itemBuilder: (context, getSuppliersIndex) {
                                  final getSuppliersItem =
                                      getSuppliers[getSuppliersIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'SupplierTrans',
                                          queryParameters: {
                                            'supplierID': serializeParam(
                                              getJsonField(
                                                getSuppliersItem,
                                                r'''$.supplier_id''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: const Color(0xFFF5F5F5),
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          height: 90.0,
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 16.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderRadius: 30.0,
                                                        buttonSize: 45.0,
                                                        fillColor:
                                                            const Color(0xFF2BD345),
                                                        icon: const Icon(
                                                          Icons.person_rounded,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  2.0),
                                                          child: Text(
                                                            getJsonField(
                                                              getSuppliersItem,
                                                              r'''$.supplier_name''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: const Color(
                                                                      0xFF054D3B),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  2.0),
                                                          child: Text(
                                                            getJsonField(
                                                              getSuppliersItem,
                                                              r'''$.supplier_bank_acc''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FlutterFlowIconButton(
                                                            borderRadius: 30.0,
                                                            borderWidth: 0.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .edit_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'Manage_supplier',
                                                                queryParameters:
                                                                    {
                                                                  'supplierName':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_name''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'bankAccount':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_bank_acc''',
                                                                    ),
                                                                    ParamType
                                                                        .int,
                                                                  ),
                                                                  'kraPin':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_pin''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'address':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_address''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'phoneNumber':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_phone_no''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'contactPerson':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_contact_person''',
                                                                    ),
                                                                    ParamType
                                                                        .int,
                                                                  ),
                                                                  'supplierID':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      getSuppliersItem,
                                                                      r'''$.supplier_id''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
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

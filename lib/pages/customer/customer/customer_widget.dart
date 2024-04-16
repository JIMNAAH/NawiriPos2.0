import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'customer_model.dart';
export 'customer_model.dart';

class CustomerWidget extends StatefulWidget {
  const CustomerWidget({super.key});

  @override
  State<CustomerWidget> createState() => _CustomerWidgetState();
}

class _CustomerWidgetState extends State<CustomerWidget> {
  late CustomerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerModel());

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.keyboard_backspace,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePage');
            },
          ),
          title: Text(
            'Customers',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Nunito',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'Manage_Customer',
                              queryParameters: {
                                'kraPin': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'bankAccount': serializeParam(
                                  0,
                                  ParamType.int,
                                ),
                                'phoneNumber': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'address': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'contactNumber': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'creditLimit': serializeParam(
                                  0.0,
                                  ParamType.double,
                                ),
                                'customerID': serializeParam(
                                  '0',
                                  ParamType.String,
                                ),
                                'customerName': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Add Customer',
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF054D3B),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'My Customers',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: Colors.black,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FutureBuilder<ApiCallResponse>(
                        future: NawiriPOSGroup.getCustomersCall.call(
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
                          final listViewGetCustomersResponse = snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final customers = listViewGetCustomersResponse
                                  .jsonBody
                                  .toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: customers.length,
                                itemBuilder: (context, customersIndex) {
                                  final customersItem =
                                      customers[customersIndex];
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
                                          'CustomerTrans',
                                          queryParameters: {
                                            'customerID': serializeParam(
                                              getJsonField(
                                                customersItem,
                                                r'''$.customer_id''',
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
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 16.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
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
                                                padding: const EdgeInsets.all(12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        getJsonField(
                                                          customersItem,
                                                          r'''$.customer_name''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.black,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        getJsonField(
                                                          customersItem,
                                                          r'''$.customer_phone_no''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(2.0),
                                                      child: Text(
                                                        getJsonField(
                                                          customersItem,
                                                          r'''$.customer_running_bal''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
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
                                                        Icons.edit_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'Manage_Customer',
                                                          queryParameters: {
                                                            'customerName':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_name''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'kraPin':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_acc''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'bankAccount':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_bank_acc''',
                                                              ),
                                                              ParamType.int,
                                                            ),
                                                            'phoneNumber':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_phone_no''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'address':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_address''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'contactNumber':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_contact_person''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'creditLimit':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_credit_limit''',
                                                              ),
                                                              ParamType.double,
                                                            ),
                                                            'customerID':
                                                                serializeParam(
                                                              getJsonField(
                                                                customersItem,
                                                                r'''$.customer_id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
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

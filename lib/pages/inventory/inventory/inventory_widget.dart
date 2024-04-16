import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'inventory_model.dart';
export 'inventory_model.dart';

class InventoryWidget extends StatefulWidget {
  const InventoryWidget({super.key});

  @override
  State<InventoryWidget> createState() => _InventoryWidgetState();
}

class _InventoryWidgetState extends State<InventoryWidget> {
  late InventoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            'Inventory',
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
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Categories');
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xFF054D3B),
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: const Color(0xFF054D3B),
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 65.0,
                                        fillColor: const Color(0xFF054D3B),
                                        icon: const Icon(
                                          Icons.category_sharp,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('Icon pressed ...');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            'Categories',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                  fontSize: 17.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: const Color(0xFF054D3B),
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: const Color(0xFF054D3B),
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          context.pushNamed('Categories');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('UnitOfMeasurement');
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xFF054D3B),
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: const Color(0xFF054D3B),
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 65.0,
                                        fillColor: const Color(0xFF054D3B),
                                        icon: const Icon(
                                          Icons.scale_sharp,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('Icon pressed ...');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            'Unit of Measurement',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                  fontSize: 17.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: const Color(0xFF054D3B),
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: const Color(0xFF054D3B),
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          context
                                              .pushNamed('UnitOfMeasurement');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Products');
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xFF054D3B),
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: const Color(0xFF054D3B),
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 65.0,
                                    fillColor: const Color(0xFF054D3B),
                                    icon: const Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.white,
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('Icon pressed ...');
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            'Products',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: Colors.white,
                                                  fontSize: 17.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: const Color(0xFF054D3B),
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0xFF054D3B),
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('Products');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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

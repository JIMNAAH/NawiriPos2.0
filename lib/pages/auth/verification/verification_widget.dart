import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'verification_model.dart';
export 'verification_model.dart';

class VerificationWidget extends StatefulWidget {
  const VerificationWidget({super.key});

  @override
  State<VerificationWidget> createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
  late VerificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificationModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(140.0, 173.0, 140.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/nawiri-logo_2.png',
                    width: 110.0,
                    height: 126.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(67.0, 18.0, 67.0, 0.0),
                    child: Text(
                      'Choose Your Account',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: const Color(0xFF054D3B),
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.antiAlias,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(43.0, 18.0, 43.0, 0.0),
                    child: Text(
                      'Select business would you like to use now with your app?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: const Color(0xFF111111),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: const Color(0xFF054D3B),
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 250.0,
                            height: 50.0,
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}

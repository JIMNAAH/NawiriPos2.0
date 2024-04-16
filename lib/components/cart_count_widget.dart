import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cart_count_model.dart';
export 'cart_count_model.dart';

class CartCountWidget extends StatefulWidget {
  const CartCountWidget({
    super.key,
    this.quantity,
  });

  final int? quantity;

  @override
  State<CartCountWidget> createState() => _CartCountWidgetState();
}

class _CartCountWidgetState extends State<CartCountWidget> {
  late CartCountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartCountModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: FlutterFlowCountController(
                  decrementIconBuilder: (enabled) => FaIcon(
                    FontAwesomeIcons.minus,
                    color: enabled
                        ? Colors.black
                        : FlutterFlowTheme.of(context).alternate,
                    size: 12.0,
                  ),
                  incrementIconBuilder: (enabled) => FaIcon(
                    FontAwesomeIcons.plus,
                    color: enabled
                        ? Colors.black
                        : FlutterFlowTheme.of(context).alternate,
                    size: 12.0,
                  ),
                  countBuilder: (count) => Text(
                    count.toString(),
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Nunito',
                          color: Colors.black,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  count: _model.countControllerValue ??= 1,
                  updateCount: (count) async {
                    setState(() => _model.countControllerValue = count);
                    FFAppState().update(() {});
                  },
                  stepSize: 1,
                  minimum: 1,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

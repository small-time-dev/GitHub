import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'clock_out_failed_bottom_sheet_component_model.dart';
export 'clock_out_failed_bottom_sheet_component_model.dart';

class ClockOutFailedBottomSheetComponentWidget extends StatefulWidget {
  const ClockOutFailedBottomSheetComponentWidget({super.key});

  @override
  _ClockOutFailedBottomSheetComponentWidgetState createState() =>
      _ClockOutFailedBottomSheetComponentWidgetState();
}

class _ClockOutFailedBottomSheetComponentWidgetState
    extends State<ClockOutFailedBottomSheetComponentWidget> {
  late ClockOutFailedBottomSheetComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ClockOutFailedBottomSheetComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Complete tasks to clock out',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ],
              ),
            ),
            wrapWithModel(
              model: _model.bottomBufferModel,
              updateCallback: () => setState(() {}),
              child: const BottomBufferWidget(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 16.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Close',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 1.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 8.0,
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

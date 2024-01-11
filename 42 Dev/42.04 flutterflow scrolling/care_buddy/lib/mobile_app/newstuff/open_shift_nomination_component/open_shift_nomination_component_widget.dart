import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'open_shift_nomination_component_model.dart';
export 'open_shift_nomination_component_model.dart';

class OpenShiftNominationComponentWidget extends StatefulWidget {
  const OpenShiftNominationComponentWidget({
    super.key,
    required this.nominatedForShift,
  });

  final bool? nominatedForShift;

  @override
  _OpenShiftNominationComponentWidgetState createState() =>
      _OpenShiftNominationComponentWidgetState();
}

class _OpenShiftNominationComponentWidgetState
    extends State<OpenShiftNominationComponentWidget> {
  late OpenShiftNominationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenShiftNominationComponentModel());

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sep 2, 2023 (Thur)',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  '9:00 AM -> 3:00 PM',
                  style: FlutterFlowTheme.of(context).titleMedium,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  'School Holiday Program',
                  style: FlutterFlowTheme.of(context).titleMedium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 32.0, 12.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                  FFAppState().shiftnominated = true;
                },
                text: 'I want it!',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 1.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 16.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                  FFAppState().shiftnominated = false;
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 1.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.bottomBufferModel,
              updateCallback: () => setState(() {}),
              child: const BottomBufferWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

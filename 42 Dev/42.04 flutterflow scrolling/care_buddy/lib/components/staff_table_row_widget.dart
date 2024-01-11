import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'staff_table_row_model.dart';
export 'staff_table_row_model.dart';

class StaffTableRowWidget extends StatefulWidget {
  const StaffTableRowWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
    this.parameter6,
  });

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;
  final String? parameter4;
  final String? parameter5;
  final String? parameter6;

  @override
  _StaffTableRowWidgetState createState() => _StaffTableRowWidgetState();
}

class _StaffTableRowWidgetState extends State<StaffTableRowWidget> {
  late StaffTableRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StaffTableRowModel());

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

    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
      }),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  widget.parameter1!,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  widget.parameter2!,
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  widget.parameter3!,
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  widget.parameter4!,
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  widget.parameter5!,
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              Flexible(
                flex: 1,
                child: Text(
                  widget.parameter6!,
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

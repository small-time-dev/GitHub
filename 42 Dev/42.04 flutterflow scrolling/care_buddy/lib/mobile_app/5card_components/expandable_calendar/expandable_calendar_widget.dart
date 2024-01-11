import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'expandable_calendar_model.dart';
export 'expandable_calendar_model.dart';

class ExpandableCalendarWidget extends StatefulWidget {
  const ExpandableCalendarWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    bool? parameter3,
  })  : parameter3 = parameter3 ?? true;

  final DateTime? parameter1;
  final bool? parameter2;
  final bool parameter3;

  @override
  _ExpandableCalendarWidgetState createState() =>
      _ExpandableCalendarWidgetState();
}

class _ExpandableCalendarWidgetState extends State<ExpandableCalendarWidget> {
  late ExpandableCalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpandableCalendarModel());

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (!widget.parameter2!)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primary,
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  weekFormat: true,
                  weekStartsMonday: true,
                  initialDate: widget.parameter1,
                  rowHeight: 44.0,
                  onChange: (DateTimeRange? newSelectedDate) async {
                    _model.calendarCollapsedSelectedDay = newSelectedDate;
                    setState(() {});
                    setState(() {});
                  },
                  titleStyle: FlutterFlowTheme.of(context).headlineMedium,
                  dayOfWeekStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14.0,
                            lineHeight: 1.0,
                          ),
                  dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                  selectedDateStyle:
                      FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                  inactiveDateStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Manrope',
                            color: const Color(0xFFB5B0B0),
                          ),
                  locale: FFLocalizations.of(context).languageCode,
                ),
              ),
            if (widget.parameter2 ?? true)
              FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).primary,
                iconColor: FlutterFlowTheme.of(context).secondaryText,
                weekFormat: false,
                weekStartsMonday: true,
                initialDate: widget.parameter1,
                rowHeight: 44.0,
                onChange: (DateTimeRange? newSelectedDate) async {
                  _model.calendarExpandedSelectedDay = newSelectedDate;
                  setState(() {});
                  setState(() {});
                },
                titleStyle: FlutterFlowTheme.of(context).headlineMedium,
                dayOfWeekStyle:
                    FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 14.0,
                          lineHeight: 1.0,
                        ),
                dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                selectedDateStyle:
                    FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                inactiveDateStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFFB5B0B0),
                        ),
                locale: FFLocalizations.of(context).languageCode,
              ),
            if (!widget.parameter2!)
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setState(() {
                    _model.calendarExpanded = true;
                  });
                },
                child: Divider(
                  thickness: 2.0,
                  indent: 160.0,
                  endIndent: 160.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            if (!widget.parameter2!)
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  setState(() {});
                },
                child: Divider(
                  thickness: 2.0,
                  indent: 160.0,
                  endIndent: 160.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            Container(
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

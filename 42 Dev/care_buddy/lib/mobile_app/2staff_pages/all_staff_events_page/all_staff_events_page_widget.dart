import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2staff_pages/bottom_nav/bottom_nav_staff_event_page/bottom_nav_staff_event_page_widget.dart';
import '/mobile_app/5card_components/shift_event/shift_event_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'all_staff_events_page_model.dart';
export 'all_staff_events_page_model.dart';

class AllStaffEventsPageWidget extends StatefulWidget {
  const AllStaffEventsPageWidget({super.key});

  @override
  _AllStaffEventsPageWidgetState createState() =>
      _AllStaffEventsPageWidgetState();
}

class _AllStaffEventsPageWidgetState extends State<AllStaffEventsPageWidget> {
  late AllStaffEventsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllStaffEventsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.startDate = getCurrentTimestamp;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'allStaffEventsPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.mainNavBarModel,
                            updateCallback: () => setState(() {}),
                            child: const MainNavBarWidget(),
                          ),
                        ),
                      ],
                    ),
                    actions: const [],
                    centerTitle: false,
                    elevation: 2.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (!_model.calendarCollapsed)
                                FlutterFlowCalendar(
                                  color: FlutterFlowTheme.of(context).primary,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  weekFormat: true,
                                  weekStartsMonday: true,
                                  initialDate: _model.startDate,
                                  rowHeight: 44.0,
                                  onChange:
                                      (DateTimeRange? newSelectedDate) async {
                                    _model.calendarCollapsedSelectedDay =
                                        newSelectedDate;
                                    setState(() {});
                                    setState(() {});
                                  },
                                  titleStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                  dayOfWeekStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        lineHeight: 1.0,
                                      ),
                                  dateStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  selectedDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                  inactiveDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFFB5B0B0),
                                          ),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              if (_model.calendarCollapsed)
                                FlutterFlowCalendar(
                                  color: FlutterFlowTheme.of(context).primary,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  weekFormat: false,
                                  weekStartsMonday: true,
                                  initialDate: _model.startDate,
                                  rowHeight: 44.0,
                                  onChange:
                                      (DateTimeRange? newSelectedDate) async {
                                    _model.calendarExpandedSelectedDay =
                                        newSelectedDate;
                                    setState(() {
                                      _model.startDate = _model
                                          .calendarExpandedSelectedDay?.start;
                                    });
                                    setState(() {});
                                  },
                                  titleStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                  dayOfWeekStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        lineHeight: 1.0,
                                      ),
                                  dateStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  selectedDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                  inactiveDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFFB5B0B0),
                                          ),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              if (!_model.calendarCollapsed)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.calendarCollapsed =
                                          !_model.calendarCollapsed;
                                    });
                                  },
                                  child: Divider(
                                    thickness: 2.0,
                                    indent: 160.0,
                                    endIndent: 160.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                              if (_model.calendarCollapsed)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.calendarCollapsed =
                                          !_model.calendarCollapsed;
                                    });
                                  },
                                  child: Divider(
                                    thickness: 2.0,
                                    indent: 160.0,
                                    endIndent: 160.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                              Container(
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.364,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Your shifts',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.shiftEventModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const ShiftEventWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.shiftEventModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const ShiftEventWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.shiftEventModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const ShiftEventWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.shiftEventModel4,
                                    updateCallback: () => setState(() {}),
                                    child: const ShiftEventWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.shiftEventModel5,
                                    updateCallback: () => setState(() {}),
                                    child: const ShiftEventWidget(),
                                  ),
                                ],
                              ),
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
                  wrapWithModel(
                    model: _model.bottomNavAllStaffEventPageModel,
                    updateCallback: () => setState(() {}),
                    child: const BottomNavStaffEventPageWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

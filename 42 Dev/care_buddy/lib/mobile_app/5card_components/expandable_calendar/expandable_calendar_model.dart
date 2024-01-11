import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'expandable_calendar_widget.dart' show ExpandableCalendarWidget;
import 'package:flutter/material.dart';

class ExpandableCalendarModel
    extends FlutterFlowModel<ExpandableCalendarWidget> {
  ///  Local state fields for this component.

  bool calendarExpanded = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for calendarCollapsed widget.
  DateTimeRange? calendarCollapsedSelectedDay;
  // State field(s) for calendarExpanded widget.
  DateTimeRange? calendarExpandedSelectedDay;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarCollapsedSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarExpandedSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

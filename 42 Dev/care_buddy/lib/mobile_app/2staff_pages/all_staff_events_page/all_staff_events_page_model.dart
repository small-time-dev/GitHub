import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2staff_pages/bottom_nav/bottom_nav_staff_event_page/bottom_nav_staff_event_page_widget.dart';
import '/mobile_app/5card_components/shift_event/shift_event_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'all_staff_events_page_widget.dart' show AllStaffEventsPageWidget;
import 'package:flutter/material.dart';

class AllStaffEventsPageModel
    extends FlutterFlowModel<AllStaffEventsPageWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  bool calendarCollapsed = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for calendarCollapsed widget.
  DateTimeRange? calendarCollapsedSelectedDay;
  // State field(s) for calendarExpanded widget.
  DateTimeRange? calendarExpandedSelectedDay;
  // Model for shiftEvent component.
  late ShiftEventModel shiftEventModel1;
  // Model for shiftEvent component.
  late ShiftEventModel shiftEventModel2;
  // Model for shiftEvent component.
  late ShiftEventModel shiftEventModel3;
  // Model for shiftEvent component.
  late ShiftEventModel shiftEventModel4;
  // Model for shiftEvent component.
  late ShiftEventModel shiftEventModel5;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for bottomNavAllStaffEventPage.
  late BottomNavStaffEventPageModel bottomNavAllStaffEventPageModel;
  // Model for mainNavBar component.
  late MainNavBarModel mainNavBarModel;

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
    shiftEventModel1 = createModel(context, () => ShiftEventModel());
    shiftEventModel2 = createModel(context, () => ShiftEventModel());
    shiftEventModel3 = createModel(context, () => ShiftEventModel());
    shiftEventModel4 = createModel(context, () => ShiftEventModel());
    shiftEventModel5 = createModel(context, () => ShiftEventModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    bottomNavAllStaffEventPageModel =
        createModel(context, () => BottomNavStaffEventPageModel());
    mainNavBarModel = createModel(context, () => MainNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    shiftEventModel1.dispose();
    shiftEventModel2.dispose();
    shiftEventModel3.dispose();
    shiftEventModel4.dispose();
    shiftEventModel5.dispose();
    bottomBufferModel.dispose();
    bottomNavAllStaffEventPageModel.dispose();
    mainNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

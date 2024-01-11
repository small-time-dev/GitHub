import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2client_pages/booking_event/booking_event_widget.dart';
import '/mobile_app/2client_pages/bottom_nav/bottom_nav_client_all_event/bottom_nav_client_all_event_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'all_client_events_page_widget.dart' show AllClientEventsPageWidget;
import 'package:flutter/material.dart';

class AllClientEventsPageModel
    extends FlutterFlowModel<AllClientEventsPageWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  bool calendarCollapsed = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for calendarCollapsed widget.
  DateTimeRange? calendarCollapsedSelectedDay;
  // State field(s) for calendarExpanded widget.
  DateTimeRange? calendarExpandedSelectedDay;
  // Model for bookingEvent component.
  late BookingEventModel bookingEventModel1;
  // Model for bookingEvent component.
  late BookingEventModel bookingEventModel2;
  // Model for bookingEvent component.
  late BookingEventModel bookingEventModel3;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for bottomNavClientAllEvent component.
  late BottomNavClientAllEventModel bottomNavClientAllEventModel;
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
    bookingEventModel1 = createModel(context, () => BookingEventModel());
    bookingEventModel2 = createModel(context, () => BookingEventModel());
    bookingEventModel3 = createModel(context, () => BookingEventModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    bottomNavClientAllEventModel =
        createModel(context, () => BottomNavClientAllEventModel());
    mainNavBarModel = createModel(context, () => MainNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bookingEventModel1.dispose();
    bookingEventModel2.dispose();
    bookingEventModel3.dispose();
    bottomBufferModel.dispose();
    bottomNavClientAllEventModel.dispose();
    mainNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

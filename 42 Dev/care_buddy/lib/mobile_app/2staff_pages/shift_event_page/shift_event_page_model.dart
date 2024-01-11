import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2staff_pages/bottom_nav/bottom_nav_shift_event/bottom_nav_shift_event_widget.dart';
import '/mobile_app/5card_components/participant_info/participant_info_widget.dart';
import '/mobile_app/5card_components/tasks/tasks_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'shift_event_page_widget.dart' show ShiftEventPageWidget;
import 'package:flutter/material.dart';

class ShiftEventPageModel extends FlutterFlowModel<ShiftEventPageWidget> {
  ///  Local state fields for this page.

  DateTime? shiftDate;

  bool shiftPickUp = false;

  bool shiftDropOff = false;

  bool tasksCompleted = false;

  String? shiftStartTime = '';

  String? shiftEndTime = '';

  bool clockedIn = false;

  bool menuOpen = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for participantInfo component.
  late ParticipantInfoModel participantInfoModel;
  // Model for tasks component.
  late TasksModel tasksModel;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for bottomNavShiftEvent component.
  late BottomNavShiftEventModel bottomNavShiftEventModel;
  // Model for mainNavBar component.
  late MainNavBarModel mainNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    participantInfoModel = createModel(context, () => ParticipantInfoModel());
    tasksModel = createModel(context, () => TasksModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    bottomNavShiftEventModel =
        createModel(context, () => BottomNavShiftEventModel());
    mainNavBarModel = createModel(context, () => MainNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    participantInfoModel.dispose();
    tasksModel.dispose();
    bottomBufferModel.dispose();
    bottomNavShiftEventModel.dispose();
    mainNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2client_pages/bottom_nav/bottom_nav_client_event/bottom_nav_client_event_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'single_client_event_page_widget.dart' show SingleClientEventPageWidget;
import 'package:flutter/material.dart';

class SingleClientEventPageModel
    extends FlutterFlowModel<SingleClientEventPageWidget> {
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
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for bottomNavClientEvent component.
  late BottomNavClientEventModel bottomNavClientEventModel;
  // Model for mainNavBar component.
  late MainNavBarModel mainNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    bottomNavClientEventModel =
        createModel(context, () => BottomNavClientEventModel());
    mainNavBarModel = createModel(context, () => MainNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomBufferModel.dispose();
    bottomNavClientEventModel.dispose();
    mainNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

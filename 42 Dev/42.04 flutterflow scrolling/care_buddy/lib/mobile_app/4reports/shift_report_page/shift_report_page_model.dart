import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/edit_profile_nav_bar/edit_profile_nav_bar_widget.dart';
import 'shift_report_page_widget.dart' show ShiftReportPageWidget;
import 'package:flutter/material.dart';

class ShiftReportPageModel extends FlutterFlowModel<ShiftReportPageWidget> {
  ///  Local state fields for this page.

  bool selfAdministered = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for editProfileNavBar component.
  late EditProfileNavBarModel editProfileNavBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    editProfileNavBarModel =
        createModel(context, () => EditProfileNavBarModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    editProfileNavBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomBufferModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

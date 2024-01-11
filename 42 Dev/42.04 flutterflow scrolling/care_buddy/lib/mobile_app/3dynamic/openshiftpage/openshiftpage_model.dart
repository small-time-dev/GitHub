import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/5card_components/open_shift_component/open_shift_component_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/edit_profile_nav_bar/edit_profile_nav_bar_widget.dart';
import 'openshiftpage_widget.dart' show OpenshiftpageWidget;
import 'package:flutter/material.dart';

class OpenshiftpageModel extends FlutterFlowModel<OpenshiftpageWidget> {
  ///  Local state fields for this page.

  bool anyOpenShifts = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for openShiftComponent component.
  late OpenShiftComponentModel openShiftComponentModel;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for editProfileNavBar component.
  late EditProfileNavBarModel editProfileNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    openShiftComponentModel =
        createModel(context, () => OpenShiftComponentModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    editProfileNavBarModel =
        createModel(context, () => EditProfileNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    openShiftComponentModel.dispose();
    bottomBufferModel.dispose();
    editProfileNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

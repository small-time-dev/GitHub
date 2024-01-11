import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/newstuff/edit_profile_nav_bar/edit_profile_nav_bar_widget.dart';
import 'participant_pairing_info_widget.dart' show ParticipantPairingInfoWidget;
import 'package:flutter/material.dart';

class ParticipantPairingInfoModel
    extends FlutterFlowModel<ParticipantPairingInfoWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for editProfileNavBar component.
  late EditProfileNavBarModel editProfileNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    editProfileNavBarModel =
        createModel(context, () => EditProfileNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    editProfileNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

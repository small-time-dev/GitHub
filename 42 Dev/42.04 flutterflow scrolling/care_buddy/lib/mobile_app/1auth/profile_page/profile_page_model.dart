import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2main/bottom_nav_company/bottom_nav_company_widget.dart';
import '/mobile_app/5card_components/participant_document/participant_document_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/profile_nav_bar/profile_nav_bar_widget.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for profileNavBar component.
  late ProfileNavBarModel profileNavBarModel;
  // Model for participantDocument component.
  late ParticipantDocumentModel participantDocumentModel;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for bottomNavCompany component.
  late BottomNavCompanyModel bottomNavCompanyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    profileNavBarModel = createModel(context, () => ProfileNavBarModel());
    participantDocumentModel =
        createModel(context, () => ParticipantDocumentModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    bottomNavCompanyModel = createModel(context, () => BottomNavCompanyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    profileNavBarModel.dispose();
    participantDocumentModel.dispose();
    bottomBufferModel.dispose();
    bottomNavCompanyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

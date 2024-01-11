import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2main/bottom_nav_company/bottom_nav_company_widget.dart';
import '/mobile_app/5card_components/company_document/company_document_widget.dart';
import '/mobile_app/5card_components/updates/updates_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'company_page_widget.dart' show CompanyPageWidget;
import 'package:flutter/material.dart';

class CompanyPageModel extends FlutterFlowModel<CompanyPageWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainNavBar component.
  late MainNavBarModel mainNavBarModel;
  // Model for updates component.
  late UpdatesModel updatesModel;
  // Model for companyDocument component.
  late CompanyDocumentModel companyDocumentModel1;
  // Model for companyDocument component.
  late CompanyDocumentModel companyDocumentModel2;
  // Model for companyDocument component.
  late CompanyDocumentModel companyDocumentModel3;
  // Model for companyDocument component.
  late CompanyDocumentModel companyDocumentModel4;
  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;
  // Model for bottomNavCompany component.
  late BottomNavCompanyModel bottomNavCompanyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mainNavBarModel = createModel(context, () => MainNavBarModel());
    updatesModel = createModel(context, () => UpdatesModel());
    companyDocumentModel1 = createModel(context, () => CompanyDocumentModel());
    companyDocumentModel2 = createModel(context, () => CompanyDocumentModel());
    companyDocumentModel3 = createModel(context, () => CompanyDocumentModel());
    companyDocumentModel4 = createModel(context, () => CompanyDocumentModel());
    bottomBufferModel = createModel(context, () => BottomBufferModel());
    bottomNavCompanyModel = createModel(context, () => BottomNavCompanyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainNavBarModel.dispose();
    updatesModel.dispose();
    companyDocumentModel1.dispose();
    companyDocumentModel2.dispose();
    companyDocumentModel3.dispose();
    companyDocumentModel4.dispose();
    bottomBufferModel.dispose();
    bottomNavCompanyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

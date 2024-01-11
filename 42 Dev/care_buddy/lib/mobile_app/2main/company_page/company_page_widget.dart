import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/2main/bottom_nav_company/bottom_nav_company_widget.dart';
import '/mobile_app/5card_components/company_document/company_document_widget.dart';
import '/mobile_app/5card_components/updates/updates_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/main_nav_bar/main_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'company_page_model.dart';
export 'company_page_model.dart';

class CompanyPageWidget extends StatefulWidget {
  const CompanyPageWidget({super.key});

  @override
  _CompanyPageWidgetState createState() => _CompanyPageWidgetState();
}

class _CompanyPageWidgetState extends State<CompanyPageWidget> {
  late CompanyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'companyPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  SliverAppBar(
                    pinned: false,
                    floating: true,
                    snap: true,
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    iconTheme: IconThemeData(
                        color: FlutterFlowTheme.of(context).primaryText),
                    automaticallyImplyLeading: false,
                    title: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.mainNavBarModel,
                            updateCallback: () => setState(() {}),
                            child: const MainNavBarWidget(),
                          ),
                        ),
                      ],
                    ),
                    actions: const [],
                    centerTitle: true,
                    elevation: 2.0,
                  )
              ],
              body: Builder(
                builder: (context) {
                  return SafeArea(
                    top: false,
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 8.0),
                                child: Text(
                                  'Our Company',
                                  textAlign: TextAlign.end,
                                  style:
                                      FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Updates',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.updatesModel,
                                        updateCallback: () => setState(() {}),
                                        child: const UpdatesWidget(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Documents',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.companyDocumentModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const CompanyDocumentWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.companyDocumentModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const CompanyDocumentWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.companyDocumentModel3,
                                      updateCallback: () => setState(() {}),
                                      child: const CompanyDocumentWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.companyDocumentModel4,
                                      updateCallback: () => setState(() {}),
                                      child: const CompanyDocumentWidget(),
                                    ),
                                  ],
                                ),
                              ),
                              wrapWithModel(
                                model: _model.bottomBufferModel,
                                updateCallback: () => setState(() {}),
                                child: const BottomBufferWidget(),
                              ),
                            ],
                          ),
                        ),
                        wrapWithModel(
                          model: _model.bottomNavCompanyModel,
                          updateCallback: () => setState(() {}),
                          child: const BottomNavCompanyWidget(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}

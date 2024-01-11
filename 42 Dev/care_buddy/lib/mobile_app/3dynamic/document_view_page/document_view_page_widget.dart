import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/newstuff/edit_profile_nav_bar/edit_profile_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'document_view_page_model.dart';
export 'document_view_page_model.dart';

class DocumentViewPageWidget extends StatefulWidget {
  const DocumentViewPageWidget({super.key});

  @override
  _DocumentViewPageWidgetState createState() => _DocumentViewPageWidgetState();
}

class _DocumentViewPageWidgetState extends State<DocumentViewPageWidget> {
  late DocumentViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentViewPageModel());

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
        title: 'documentViewPage',
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
                    backgroundColor: FlutterFlowTheme.of(context).transparent,
                    iconTheme: IconThemeData(
                        color: FlutterFlowTheme.of(context).primaryText),
                    automaticallyImplyLeading: false,
                    title: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: wrapWithModel(
                            model: _model.editProfileNavBarModel,
                            updateCallback: () => setState(() {}),
                            child: const EditProfileNavBarWidget(),
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
                        FlutterFlowPdfViewer(
                          networkPath: 'http://www.pdf995.com/samples/pdf.pdf',
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          horizontalScroll: false,
                        ),
                        if (_model.loadingDoc)
                          Opacity(
                            opacity: 0.0,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Lottie.network(
                                'https://assets2.lottiefiles.com/packages/lf20_aZTdD5.json',
                                width: 150.0,
                                height: 130.0,
                                fit: BoxFit.contain,
                                animate: true,
                              ),
                            ),
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

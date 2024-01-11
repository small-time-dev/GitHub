import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/5card_components/open_shift_component/open_shift_component_widget.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/edit_profile_nav_bar/edit_profile_nav_bar_widget.dart';
import '/mobile_app/newstuff/open_shift_nomination_component/open_shift_nomination_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'openshiftpage_model.dart';
export 'openshiftpage_model.dart';

class OpenshiftpageWidget extends StatefulWidget {
  const OpenshiftpageWidget({super.key});

  @override
  _OpenshiftpageWidgetState createState() => _OpenshiftpageWidgetState();
}

class _OpenshiftpageWidgetState extends State<OpenshiftpageWidget> {
  late OpenshiftpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenshiftpageModel());

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
        title: 'openshiftpage',
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
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 8.0),
                                    child: Text(
                                      'Open Shifts',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ),
                                ],
                              ),
                              if (FFAppState().shiftnominated)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    // Change to non-blocking if you want an api call (to track who is opening the sheet)
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: const Color(0x00FFFFFF),
                                      barrierColor: const Color(0x00FFFFFF),
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.4,
                                              child:
                                                  const OpenShiftNominationComponentWidget(
                                                nominatedForShift: false,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: wrapWithModel(
                                    model: _model.openShiftComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child: const OpenShiftComponentWidget(),
                                  ),
                                ),
                              if (!_model.anyOpenShifts)
                                Flexible(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'No Open Shifts to display!',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Manrope',
                                                fontSize: 18.0,
                                              ),
                                        ),
                                      ],
                                    ),
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

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'edit_profile_nav_bar_model.dart';
export 'edit_profile_nav_bar_model.dart';

class EditProfileNavBarWidget extends StatefulWidget {
  const EditProfileNavBarWidget({super.key});

  @override
  _EditProfileNavBarWidgetState createState() =>
      _EditProfileNavBarWidgetState();
}

class _EditProfileNavBarWidgetState extends State<EditProfileNavBarWidget> {
  late EditProfileNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                    _model.navBack = false;
                  },
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 32.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/CC_Primary_Logo_Forest_Green.png',
                      width: 220.0,
                      fit: BoxFit.contain,
                      alignment: const Alignment(0.0, 0.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

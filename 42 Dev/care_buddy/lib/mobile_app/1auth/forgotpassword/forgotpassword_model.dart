import '/flutter_flow/flutter_flow_util.dart';
import 'forgotpassword_widget.dart' show ForgotpasswordWidget;
import 'package:flutter/material.dart';

class ForgotpasswordModel extends FlutterFlowModel<ForgotpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

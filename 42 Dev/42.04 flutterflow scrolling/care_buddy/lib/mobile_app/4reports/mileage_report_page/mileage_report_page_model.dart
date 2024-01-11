import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import '/mobile_app/newstuff/edit_profile_nav_bar/edit_profile_nav_bar_widget.dart';
import 'mileage_report_page_widget.dart' show MileageReportPageWidget;
import 'package:flutter/material.dart';

class MileageReportPageModel extends FlutterFlowModel<MileageReportPageWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for editProfileNavBar component.
  late EditProfileNavBarModel editProfileNavBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    bottomBufferModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

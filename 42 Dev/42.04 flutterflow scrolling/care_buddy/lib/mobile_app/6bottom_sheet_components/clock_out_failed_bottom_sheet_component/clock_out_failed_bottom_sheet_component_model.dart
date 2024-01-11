import '/flutter_flow/flutter_flow_util.dart';
import '/mobile_app/7fab_components/bottom_buffer/bottom_buffer_widget.dart';
import 'clock_out_failed_bottom_sheet_component_widget.dart'
    show ClockOutFailedBottomSheetComponentWidget;
import 'package:flutter/material.dart';

class ClockOutFailedBottomSheetComponentModel
    extends FlutterFlowModel<ClockOutFailedBottomSheetComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for bottomBuffer component.
  late BottomBufferModel bottomBufferModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bottomBufferModel = createModel(context, () => BottomBufferModel());
  }

  @override
  void dispose() {
    bottomBufferModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

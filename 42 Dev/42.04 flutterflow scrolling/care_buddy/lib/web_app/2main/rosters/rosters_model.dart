import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/0globals/side_nav/side_nav_widget.dart';
import 'rosters_widget.dart' show RostersWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class RostersModel extends FlutterFlowModel<RostersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_buffer_model.dart';
export 'bottom_buffer_model.dart';

class BottomBufferWidget extends StatefulWidget {
  const BottomBufferWidget({super.key});

  @override
  _BottomBufferWidgetState createState() => _BottomBufferWidgetState();
}

class _BottomBufferWidgetState extends State<BottomBufferWidget> {
  late BottomBufferModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomBufferModel());

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

    return Container(
      height: 80.0,
      decoration: const BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
    );
  }
}

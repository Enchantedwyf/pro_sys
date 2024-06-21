import 'package:flutter/material.dart';

import 'MenuBarModel.dart';

class MenuBarWidget extends StatefulWidget {
  const MenuBarWidget({
    super.key,
    String? text,
  }) : this.text = text ?? '菜单名称';

  final String text;

  @override
  State<MenuBarWidget> createState() => _MenuBarWidgetState();
}

class _MenuBarWidgetState extends State<MenuBarWidget> {
  late MenuBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    // _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => MenuBarModel());
  }

  @override
  void dispose() {
    // _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 199,
      height: 100,
      decoration: BoxDecoration(
        // color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Text(
          _model.menuName,
          // style: FlutterFlowTheme.of(context).bodyMedium.override(
          //       fontFamily: 'Readex Pro',
          //       letterSpacing: 0,
          //     ),
        ),
      ),
    );
  }
}

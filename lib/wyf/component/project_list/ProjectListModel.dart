import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../pojo/Project.dart';
import 'ProjectListWidget.dart';

class ProjectListModel extends FlutterFlowModel<ProjectListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  var selectedIndex = 0.obs;

  // 设置选中的索引
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  var projects = <Project>[
    Project(id: 1, name: '工程1',checkBox: false),
    Project(id: 2, name: '工程2',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程4',checkBox: false),
    Project(id: 3, name: '工程5',checkBox: false),
    Project(id: 3, name: '工程6',checkBox: false),
    Project(id: 3, name: '工程7',checkBox: false),
    Project(id: 3, name: '工程8',checkBox: false),
    Project(id: 3, name: '工程9',checkBox: false),
    Project(id: 3, name: '工程10',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
    Project(id: 3, name: '工程3',checkBox: false),
  ].obs;
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_sys/wyf/component/project_list/ProjectListWidget.dart';
import 'package:pro_sys/wyf/pages/project/ProjectWidget.dart';

import '../../common/colors/colors.dart';
import '../../common/colors/size.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Row(
        children: [
          Container(
            // color: Colors.grey,
            width: 200,
            child: Obx(() {
              List<Widget> menuItems = [];
              for (int index = 0; index < controller.menus.length; index++) {
                menuItems.add(
                  Container(
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          controller.menus[index].title,
                          style: TextStyle(
                            color: controller.selectedIndex.value == index
                                ? Colors.blue[900]
                                : Colors.black,
                          ),
                        ),
                      ),
                      onTap: () {
                        controller.setSelectedIndex(index);
                      },
                    ),
                    color: controller.selectedIndex.value == index
                        ? AppColors.secondBrush
                        : AppColors.borderColor,
                  ),
                );
                menuItems.add(Container(
                  height: 20,
                ));
                if (controller.selectedIndex.value == 0 && index == 0) {
                  menuItems.add(Container(
                    color: Colors.amber,
                    height: 800,
                    width: 20,
                    child: ProjectListWidget(),
                  )); // menuItems.add();
                }
              }
              return ListView(
                children: menuItems,
              );
            }),
          ),
          Expanded(
            child: Obx(() {
              if (controller.selectedIndex.value == 0) {
                //默认选中第一个工程
                return ProjectWidget();
              } else {
                return Center(
                  child: Text(
                    '选择了: ${controller.menus[controller.selectedIndex.value].title}',
                    style: TextStyle(fontSize: 24),
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

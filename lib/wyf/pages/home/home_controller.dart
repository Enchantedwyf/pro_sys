import "package:get/get.dart";

import "home_model.dart";

class HomeController extends GetxController {
  var menus = <MenuData>[
    const MenuData(
      index: 0,
      title: "工程管理",
    ),
    const MenuData(
      index: 1,
      title: "设备管理",
    ),
    const MenuData(
      index: 2,
      title: "软件设置",
    ),
  ];

  // 当前选中的索引
  var selectedIndex = 0.obs;

  // 设置选中的索引
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}

import 'package:get/get.dart';

import '../pages/home/home_controller.dart';
import '../pages/home/home_view.dart';
import '../pages/notfound/notfound_view.dart';
import '../pages/project/ProjectWidget.dart';
import 'app_routes.dart';

//GET初始化路由数组
class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
      }),
    ),
    GetPage(
      name: AppRoutes.project,
      page: () => const ProjectWidget(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
      }),
    ),
    // GetPage(
    //     name: AppRoutes.home,
    //     page: () => const HomePage(),
    //     //配置中间件
    //     middlewares: [HomeMiddleware()])
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.notfound,
    page: () => const NotfoundPage(),
  );
}

import 'package:get/get.dart';
import 'core/api/api.dart';
import 'views/home/home.dart';
import 'views/login/login.dart';


class AppBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(ApiProvider(), permanent: true);
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: true);
    Get.lazyPut<LoginController>(() => LoginController(),fenix: true,);
    Get.lazyPut<HomeController>(() => HomeController(apiRepository: Get.find()),fenix: true,);
  }
}
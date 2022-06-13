import 'package:get/get.dart';
import 'package:getx/controller/dashboard_controller.dart';
import 'package:getx/controller/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
  }
}

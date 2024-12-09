import 'package:get/get.dart';
import 'package:parrot_chating/Pages/Welcome/controller.dart';

class WelcomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
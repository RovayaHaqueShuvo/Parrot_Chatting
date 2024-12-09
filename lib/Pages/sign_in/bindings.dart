import 'package:get/get.dart';
import 'package:parrot_chating/Pages/Welcome/controller.dart';

import 'index.dart';

class SignInBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignINController());
  }
}
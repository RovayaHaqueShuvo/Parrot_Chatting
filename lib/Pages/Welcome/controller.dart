import 'package:get/get.dart';
import 'package:parrot_chating/Pages/Welcome/state.dart';
import 'package:parrot_chating/routes/name.dart';

import '../../common/store/config.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index)async{
    state.index.value = index;

  }
  handleSignIn()async{
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGH_IN);
  }

}
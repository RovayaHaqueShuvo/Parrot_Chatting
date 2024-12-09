import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:parrot_chating/Pages/Welcome/bindings.dart';
import 'package:parrot_chating/Pages/sign_in/bindings.dart';
import 'package:parrot_chating/routes/name.dart';

import '../Pages/Welcome/view.dart';
import '../Pages/sign_in/view.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const Application = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGH_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
  ];
}

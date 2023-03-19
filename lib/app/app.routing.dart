import 'package:get/get.dart';
import 'package:live_coding/app/routes.dart';
import 'package:live_coding/features/randomusers/bidings/randomuser.binding.dart';
import 'package:live_coding/ui/screens/randomuser/randomuser.screen.dart';
import 'package:live_coding/ui/screens/splash/splash.screen.dart';

class AppRouting {
  static final List<GetPage> appRoutes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.randomuser,
      page: () => const RandomuserScreen(),
      bindings: [
        RandomUserBinding(),
      ],
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
  ];
}

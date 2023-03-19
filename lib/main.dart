import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:live_coding/app/app.dart';
import 'package:live_coding/features/constants.feature.dart';
import 'package:live_coding/features/randomusers/services/randomuser.service.dart';
import 'package:live_coding/features/theme/controllers/theme.controller.dart';

Future<void> initServices() async {
  await GetStorage.init(STORAGE_KEY);

  Get.put(ThemeController());
  Get.put(RandomUserService());
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
    // Set device orientation
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // Set status bar color
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  //Load Services
  initServices().then((value) async {
    runApp(const MainApp());
  });
}

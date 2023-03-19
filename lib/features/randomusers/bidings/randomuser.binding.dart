import 'package:get/get.dart';
import 'package:live_coding/features/randomusers/controllers/randomuser.controller.dart';

class RandomUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RandomUserController>(
      () => RandomUserController(),
    );
  }
}

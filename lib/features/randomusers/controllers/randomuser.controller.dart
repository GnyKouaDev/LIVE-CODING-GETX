import 'package:get/get.dart';
import 'package:live_coding/features/randomusers/models/random_user_response/user.dart';
import 'package:live_coding/features/randomusers/services/randomuser.service.dart';

class RandomUserController extends GetxController
    with StateMixin<RxList<User>> {
  final _randService = Get.find<RandomUserService>();

  @override
  void onInit() {
    super.onInit();
    _loadUsers();
  }

  _loadUsers() async {
    try {
      var res = await _randService.getManyUser(250);
      change(res!.obs,
          status: res.isNotEmpty ? RxStatus.success() : RxStatus.empty());
    } catch (e) {
      change(<User>[].obs, status: RxStatus.error(e.toString()));
    }
  }
}

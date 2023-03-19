import 'package:get/get.dart';
import 'package:live_coding/features/randomusers/models/random_user_response/user.dart';
import 'package:live_coding/features/randomusers/providers/randomuser.provider.dart';

class RandomUserService extends GetxService {
  final _randUserProvider = RandomUserProvider();
  RxList<User> users = <User>[].obs;

  getOneUser() async {
    try {
      var resp = await _randUserProvider.getUser();

      if (resp.body == null) {
        throw "Body is null";
      }
      var user = resp.body?.results?.first;
      if (user != null) {
        users.add(user);
      }

      return resp.body;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<User>?> getManyUser(int nbre) async {
    try {
      var resp = await _randUserProvider.getMultipleUser(nbre);

      if (resp.body == null) {
        throw "Body is null";
      }
      var user = resp.body?.results;
      if (user != null) {
        users.addAll(user);
      }

      return resp.body?.results;
    } catch (e) {
      throw e.toString();
    }
  }
}

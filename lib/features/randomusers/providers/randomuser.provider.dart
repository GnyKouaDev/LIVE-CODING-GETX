import 'package:get/get.dart';
import 'package:live_coding/features/global/providers/main.provider.dart';
import 'package:live_coding/features/randomusers/models/random_user_response/random_user_response.dart';

class RandomUserProvider extends MainProvider {
  Future<Response<RandomUserResponse>> getUser() => get(
        "",
        decoder: (data) => RandomUserResponse.fromJson(data),
      );
  Future<Response<RandomUserResponse>> getMultipleUser(int nombre) =>
      get<RandomUserResponse>(
        "",
        query: {"results": "$nombre"},
        decoder: (data) => RandomUserResponse.fromJson(data),
      );
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'info.dart';
import 'user.dart';

part 'random_user_response.g.dart';

@JsonSerializable()
class RandomUserResponse extends Equatable {
  final List<User>? results;
  final Info? info;

  const RandomUserResponse({this.results, this.info});

  factory RandomUserResponse.fromJson(Map<String, dynamic> json) {
    return _$RandomUserResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RandomUserResponseToJson(this);

  RandomUserResponse copyWith({
    List<User>? results,
    Info? info,
  }) {
    return RandomUserResponse(
      results: results ?? this.results,
      info: info ?? this.info,
    );
  }

  @override
  List<Object?> get props => [results, info];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
//import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String username,
    required int? age,
    @JsonKey(readValue: _readAvatar) 
    required String avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

String _readAvatar(Map json, String key) {
  return json['avatar']['tmdb']['avatar_path'] as String;
}


  
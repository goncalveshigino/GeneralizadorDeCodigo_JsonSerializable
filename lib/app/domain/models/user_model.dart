import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: false)
class User {
  final int id;
  final String username;

  @JsonKey(readValue: _readAvatar)
  String avatar;
 
 final List<Occupation> occupations;

  User({
    required this.id, 
    required this.username, 
    required this.avatar, 
    required this.occupations
    });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User copyWith({
    int? id, 
    String? username, 
    String? avatar, 
    List<Occupation>? occupations
    }) => User(
      id: id ?? this.id,
      username: username ?? this.username,
      avatar: avatar ?? this.avatar, 
      occupations: occupations ?? this.occupations
      );
}

String _readAvatar(Map json, String key) {
  return json['avatar']['tmdb']['avatar_path'] as String;
}


@JsonSerializable(createToJson: false)
class Occupation {
  final int id;
  final String name;

  Occupation({
    required this.id, 
    required this.name,
  });

  factory Occupation.fromJson(Map<String, dynamic> json) => _$OccupationFromJson(json);
}

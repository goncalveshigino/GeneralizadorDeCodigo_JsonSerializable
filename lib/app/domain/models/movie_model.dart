import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(createToJson: false)
class Movie {
  final int id;
  final String title;
  final String overview;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'release_date')
  final DateTime releaseDate;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  Movie(
      {required this.id,
      required this.title,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.voteAverage,
      required this.genreIds});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

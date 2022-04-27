import 'package:json_annotation/json_annotation.dart';


part 'top10_rated_movies.g.dart';

@JsonSerializable()
class Top10RatedMovies {

  @JsonKey(name: 'results')
  List<Top10RatedMoviesResult>? results;

  Top10RatedMovies({
    this.results,
  });

  factory Top10RatedMovies.fromJson(Map<String, dynamic> json) {
    return _$Top10RatedMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$Top10RatedMoviesToJson(this);
}
@JsonSerializable()
class Top10RatedMoviesResult {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;
  bool? video;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;

  Top10RatedMoviesResult({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Top10RatedMoviesResult.fromJson(Map<String, dynamic> json) {
    return _$Top10RatedMoviesResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$Top10RatedMoviesResultToJson(this);
}
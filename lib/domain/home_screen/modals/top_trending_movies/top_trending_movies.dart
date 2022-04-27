import 'package:json_annotation/json_annotation.dart';

part 'top_trending_movies.g.dart';

@JsonSerializable()
class TopTrendingMovies {
  @JsonKey(name: 'results')
  List<TopTrendingMoviesResult>? results;

  TopTrendingMovies({
    this.results,
  });

  factory TopTrendingMovies.fromJson(Map<String, dynamic> json) {
    return _$TopTrendingMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopTrendingMoviesToJson(this);
}

@JsonSerializable()
class TopTrendingMoviesResult {
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

  TopTrendingMoviesResult({
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

  factory TopTrendingMoviesResult.fromJson(Map<String, dynamic> json) {
    return _$TopTrendingMoviesResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopTrendingMoviesResultToJson(this);
}

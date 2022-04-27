import 'package:json_annotation/json_annotation.dart';

part 'realesed_in_past_year.g.dart';

@JsonSerializable()
class RealesedInPastYear {
  @JsonKey(name: 'results')
  List<RealesedInPastYearResult>? results;

  RealesedInPastYear({
    this.results,
  });

  factory RealesedInPastYear.fromJson(Map<String, dynamic> json) {
    return _$RealesedInPastYearFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RealesedInPastYearToJson(this);
}

@JsonSerializable()
class RealesedInPastYearResult {
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

  RealesedInPastYearResult({
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

  factory RealesedInPastYearResult.fromJson(Map<String, dynamic> json) {
    return _$RealesedInPastYearResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RealesedInPastYearResultToJson(this);
}

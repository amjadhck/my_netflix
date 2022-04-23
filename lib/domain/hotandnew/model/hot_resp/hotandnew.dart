import 'package:json_annotation/json_annotation.dart';

part 'hotandnew.g.dart';

@JsonSerializable()
class HotAndNewResp {
  @JsonKey(name: 'results')
  List<HotandNewResult> results;
  HotAndNewResp({
    this.results = const [],
  });

  factory HotAndNewResp.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewRespToJson(this);
}

@JsonSerializable()
class HotandNewResult {
  @JsonKey(name: 'adult')
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  HotandNewResult({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory HotandNewResult.fromJson(Map<String, dynamic> json) {
    return _$HotandNewResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandNewResultToJson(this);
}

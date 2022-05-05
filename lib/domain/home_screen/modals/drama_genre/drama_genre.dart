import 'package:json_annotation/json_annotation.dart';

part 'drama_genre.g.dart';

@JsonSerializable()
class DramaGenre {
  @JsonKey(name: 'results')
  List<DramaGenreResult>? results;

  DramaGenre({
    this.results,
  });

  factory DramaGenre.fromJson(Map<String, dynamic> json) {
    return _$DramaGenreFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DramaGenreToJson(this);
}

@JsonSerializable()
class DramaGenreResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  DramaGenreResult({
    this.backdropPath,
    this.genreIds,
    this.title,
    this.originalTitle,
    this.posterPath,
  });

  factory DramaGenreResult.fromJson(Map<String, dynamic> json) {
    return _$DramaGenreResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DramaGenreResultToJson(this);
}

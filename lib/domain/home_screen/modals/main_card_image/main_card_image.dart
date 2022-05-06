import 'package:json_annotation/json_annotation.dart';

part 'main_card_image.g.dart';

@JsonSerializable()
class MainCardImage {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  dynamic belongsToCollection;
  int? budget;
  List<dynamic>? genres;
  String? homepage;
  int? id;
  @JsonKey(name: 'imdb_id')
  dynamic imdbId;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  int? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'production_companies')
  List<dynamic>? productionCompanies;
  @JsonKey(name: 'production_countries')
  List<dynamic>? productionCountries;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  int? revenue;
  int? runtime;
  @JsonKey(name: 'spoken_languages')
  List<dynamic>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  @JsonKey(name: 'vote_average')
  int? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;

  MainCardImage({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MainCardImage.fromJson(Map<String, dynamic> json) {
    return _$MainCardImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MainCardImageToJson(this);
}

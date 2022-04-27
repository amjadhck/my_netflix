// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realesed_in_past_year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealesedInPastYear _$RealesedInPastYearFromJson(Map<String, dynamic> json) =>
    RealesedInPastYear(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              RealesedInPastYearResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RealesedInPastYearToJson(RealesedInPastYear instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

RealesedInPastYearResult _$RealesedInPastYearResultFromJson(
        Map<String, dynamic> json) =>
    RealesedInPastYearResult(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$RealesedInPastYearResultToJson(
        RealesedInPastYearResult instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drama_genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DramaGenre _$DramaGenreFromJson(Map<String, dynamic> json) => DramaGenre(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => DramaGenreResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DramaGenreToJson(DramaGenre instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

DramaGenreResult _$DramaGenreResultFromJson(Map<String, dynamic> json) =>
    DramaGenreResult(
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      title: json['title'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$DramaGenreResultToJson(DramaGenreResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };

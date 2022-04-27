// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Downloads _$$_DownloadsFromJson(Map<String, dynamic> json) => _$_Downloads(
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
      originalTitle: json['original_title'] as String?,
      originalName: json['original_name'] as String?,
      name: json['name'] as String?,
      description: json['overview'] as String?,
      isAdult: json['adult'] as bool?,
      media: json['media_type'] as String?,
    );

Map<String, dynamic> _$$_DownloadsToJson(_$_Downloads instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
      'name': instance.name,
      'overview': instance.description,
      'adult': instance.isAdult,
      'media_type': instance.media,
    };

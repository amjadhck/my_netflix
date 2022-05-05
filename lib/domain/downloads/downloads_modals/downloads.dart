import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "original_title") required String? originalTitle,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "overview") required String? description,
    @JsonKey(name: "adult") required bool? isAdult,
    @JsonKey(name: "media_type") required String? media,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}

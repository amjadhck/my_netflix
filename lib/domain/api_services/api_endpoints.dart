import 'package:my_netflix/core/strings.dart';
import 'package:my_netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kbaseUrl/search/movie?api_key=$apiKey";
  static const hotandnew = "$kbaseUrl/movie/upcoming?api_key=$apiKey";
  static const tvDrama = "$kbaseUrl/tv/popular?api_key=$apiKey";
  static const releasedInPastYear = "$kbaseUrl/movie/popular?api_key=$apiKey";
  static const top10list = "$kbaseUrl/movie/top_rated?api_key=$apiKey";
  static const trending = "$kbaseUrl/movie/now_playing?api_key=$apiKey";
  static const latest = "$kbaseUrl/movie/latest?api_key=$apiKey";
}

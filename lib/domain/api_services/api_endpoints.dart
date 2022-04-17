import 'package:my_netflix/core/strings.dart';
import 'package:my_netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kbaseUrl/search/movie?api_key=$apiKey";
}

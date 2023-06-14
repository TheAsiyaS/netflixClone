

import 'package:netflix_clone/core/baseUrl.dart';
import 'package:netflix_clone/infrastructure/apiKey.dart';

class apiEndPoint {
  static const download = '$baseUrl/trending/all/day?api_key=$apiKey';
  static const Search = '$baseUrl/search/movie?api_key=$apiKey';
  static const newAndHotMovie='$baseUrl/discover/movie?api_key=$apiKey';
  static const newAndHotTV='$baseUrl/discover/tv?api_key=$apiKey';

}
//https://api.themoviedb.org/3/search/movie?api_key=d7153ed7cf68e4e24ac9dbae183b7e7a&query=spiderman
//'https://api.themoviedb.org/3'
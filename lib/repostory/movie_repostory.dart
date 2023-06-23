import 'dart:convert';

import '../model/movie.dart';
import 'package:http/http.dart' as http;
class MovieRepository{
  var query = {
    'api_key' : '4b3b9a9c36bb9162de5e518e602fe31d'
  };
  //String url = "https://api.themoviedb.org/3/movie/popular?api_key=4b3b9a9c36bb9162de5e518e602fe31d";
  Future<List<Movie>?> loadMovies()async{
    var uri = Uri.https("https://api.themoviedb.org","/3/movie/popular",query);
    var response = await http.get(uri);
    if(response.statusCode == 200){
      final body = json.decode(response.body);
      if(body["results"] != null){
        List<dynamic> list = body["results"];
        return list.map<Movie>((item) => Movie.fromJson(item)).toList();
      }
    }
    return null;
  }
}
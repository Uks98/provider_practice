import 'package:flutter/cupertino.dart';

import '../model/movie.dart';

class MovieProvider extends ChangeNotifier{
  List<Movie> _movies = [];

  List get movies => _movies;

  loadMovies(){
    //repostory
  }
}
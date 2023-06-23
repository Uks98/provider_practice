import 'package:flutter/material.dart';
import 'package:provider_practice/provider/bottom_navigation_provider.dart';
import 'package:provider_practice/ui/counter_home_widget.dart';

import '../provider/count_provider.dart';
import 'package:provider/provider.dart';

import '../ui/movie_list_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  CountProvider? _countProvider;
  BottomNavigationProvider? _bottomNavigationProvider;

  Widget _navigationBody() {
    switch(_bottomNavigationProvider!.currentPage){
      case 0:
        return CountHomeWidget();
        break;
      case 1 :
        return MovieListWidget();
    }
    return Container();
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie"),
      ],
      currentIndex: _bottomNavigationProvider!.currentPage,
      selectedItemColor: Colors.red,
      onTap: (index) {
        _bottomNavigationProvider!.updateCurrentPage(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    _bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}


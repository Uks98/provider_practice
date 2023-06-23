import 'package:flutter/material.dart';
import 'package:provider_practice/ui/counter_home_widget.dart';

import '../provider/count_provider.dart';
import 'package:provider/provider.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  CountProvider? _countProvider;
  Widget _navigationBody(){
     return Container();
  }
  Widget _bottomNavigationBar(){
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.movie),label: "Movie"),
    ],
    currentIndex: 0,selectedItemColor: Colors.red,
      onTap: (index){

      },
    );

  }
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(

      appBar: AppBar(title: Text("count")),
      body:  _navigationBody(),
      bottomNavigationBar: _bottomNavigationBar(

      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// IconButton(onPressed: (){
// _countProvider?.add();
// }, icon: Icon(Icons.add)),
// IconButton(onPressed: (){
// _countProvider?.remove();
// }, icon: Icon(Icons.exposure_minus_1))
// ],
// ),
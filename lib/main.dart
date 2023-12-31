import 'package:flutter/material.dart';
import 'package:provider_practice/provider/bottom_navigation_provider.dart';
import 'package:provider_practice/provider/count_provider.dart';
import 'package:provider_practice/src/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (BuildContext context) => BottomNavigationProvider()
            ),
            ChangeNotifierProvider(create: (BuildContext context) => CountProvider(),)
          ],
          child: Home(),
        ));
  }
}

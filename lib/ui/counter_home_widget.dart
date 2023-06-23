import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/count_provider.dart';
class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<CountProvider>(
        builder: (BuildContext context, value, Widget? child)=>Text(
          value.count.toString(),
          style: TextStyle(fontSize: 80),
        ),
      ),
    );
  }
}

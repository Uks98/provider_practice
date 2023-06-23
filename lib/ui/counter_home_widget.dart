import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_practice/provider/count_provider.dart';
import 'package:provider_practice/src/component/view_counter.dart';
import 'package:provider/provider.dart';
class CountHomeWidget extends StatelessWidget {
   CountHomeWidget({Key? key}) : super(key: key);
CountProvider? _countProvider;
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text("count provider"),

        ),
        body: ViewCountWidget(),
        floatingActionButton:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: () {
              _countProvider?.add();
            }, icon: Icon(Icons.add)),
            IconButton(onPressed: () {
              _countProvider?.remove();
            }, icon: Icon(Icons.exposure_minus_1))
          ],
        ),
    );
  }
}

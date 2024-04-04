import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:chapter_5/providers/counter_provider.dart';
import 'package:chapter_5/providers/year_provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App year (${context.watch<Year>().year})'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () => context.read<Year>().increment(),
                child: Icon(Icons.add),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:chapter_5/providers/counter_provider.dart';
// import 'package:chapter_5/providers/shopping_cart_provider.dart';
import 'package:chapter_5/screens/home_screen.dart';
// import 'package:chapter_5/screens/second_screen.dart';
import 'package:chapter_5/providers/year_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => Counter()),
        // ChangeNotifierProvider(create: (_) => ShoppingCart()),
        ChangeNotifierProvider(create: (_) => Year()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        // '/second': (context) => SecondScreen(),
      },
    );
  }
}
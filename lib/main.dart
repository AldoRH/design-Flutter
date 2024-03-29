import 'package:design/screens/home_screen.dart';
import 'package:design/screens/scroll_design.dart';
import 'package:flutter/material.dart';

import 'package:design/screens/basic_design.dart';
import 'package:flutter/services.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) =>   BasicDesignScreen(),
        'scroll_screen': (_) =>   ScrollScreen(),
        'home_screen': (_) =>   HomeScreen(),
      },
    );
  }
}
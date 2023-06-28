import 'package:disenos/screens/home_scren.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasecDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}

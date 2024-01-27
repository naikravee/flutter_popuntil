import 'package:flutter/material.dart';
import 'package:flutter_popuntil_with_data/screens/home.dart';
import 'package:flutter_popuntil_with_data/screens/screen_a.dart';
import 'package:flutter_popuntil_with_data/screens/screen_b.dart';
import 'package:flutter_popuntil_with_data/screens/screen_c.dart';
import 'package:flutter_popuntil_with_data/screens/screen_d.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHome(title: 'Home Page'),
        routes: {
          "/goto_screen_a": (BuildContext context) => const ScreenA(),
          "/goto_screen_b": (BuildContext context) => const ScreenB(),
          "/goto_screen_c": (BuildContext context) => const ScreenC(),
          "/goto_screen_d": (BuildContext context) => const ScreenD(),
        });
  }
}

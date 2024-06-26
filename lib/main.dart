import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/screens/CategoryPage.dart';
import 'package:movie_app/screens/HomeScreen.dart';
import 'package:movie_app/screens/MoviePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // Hide the status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF0F111D)),
      routes: {
        '/': (context) => const HomeScreen(),
        '/CategoryPage': (context) => const CategoryPage(),
        '/moviePage': (context) => const MoviePage(),
      },
    );
  }
}

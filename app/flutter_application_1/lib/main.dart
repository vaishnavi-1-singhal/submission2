import 'package:flutter/material.dart';

void main() {
  runApp(const CineWatch());
}

class CineWatch extends StatefulWidget {
  const CineWatch({super.key});

  @override
  State<CineWatch> createState() => _CineWatchState();
}

class _CineWatchState extends State<CineWatch> {
  ThemeMode _themeMode = ThemeMode.dark;
  void toggleThemeMode() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'CineWatch',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white10,
        scaffoldBackgroundColor: Colors.redAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.black,
      ),themeMode: _themeMode,
      
    );
  }
}
class Movie{
  final String title;
  final String genre;
  final String descripton;
  final double rating;
  final String posterUrl;

  Movie({required this.title, required this.genre, required this.descripton, required this.rating, required this.posterUrl});
}

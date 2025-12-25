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
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white10,
        scaffoldBackgroundColor: Colors.redAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}

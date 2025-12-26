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
      debugShowCheckedModeBanner: false,
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
  final String poster;

  Movie({required this.title, required this.genre, required this.descripton, required this.rating, required this.poster});
}
final List<Movie> movies = [
  Movie(
    title: 'Inception',
    genre: 'Sci-Fi',
    descripton: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
    rating: 8.8,
    poster: '',
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action',
    descripton: 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.',
    rating: 9.0,
    poster: '',
  ),
  Movie(
    title: 'Interstellar',
    genre: 'Adventure',
    descripton: 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
    rating: 8.6,
    poster: '',
  ),
  Movie(title: 'Jaws', genre: 'Thriller', descripton: 'A giant great white shark arrives on the shores of a New England beach resort and wreaks havoc with bloody attacks on swimmers until a local sheriff teams up with a marine biologist and an old seafarer to hunt the beast down.', rating: 8.0, poster: '',),
];
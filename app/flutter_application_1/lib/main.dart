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
    poster: 'assets/inceptionposter.jpeg',
  ),
  Movie(
    title: 'Interstellar',
    genre: 'Adventure',
    descripton: 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
    rating: 8.6,
    poster: 'assets/interstellarposter.jpeg',
  ),
  Movie(title: 'Jaws', genre: 'Thriller', descripton: 'A giant great white shark arrives on the shores of a New England beach resort and wreaks havoc with bloody attacks on swimmers until a local sheriff teams up with a marine biologist and an old seafarer to hunt the beast down.', rating: 8.0, poster: 'assets/jawsposter.jpeg',),
Movie(title: 'Avengers: Endgame', genre: 'Action', descripton: 'After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', rating: 8.4, poster: 'assets/avengersendgameposter.jpeg',),
Movie(title: 'Avatar', genre: 'Fantasy', descripton: 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', rating: 7.8, poster: 'assets/avatarposter.jpeg',),
];
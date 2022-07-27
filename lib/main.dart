//import './widget/custom_navbar.dart';
import './pages/movie_launch_page.dart';
import './pages/movie_launch_page2.dart';
import './pages/my_list_page.dart';
import './pages/replay_page.dart';
import './pages/vod_page.dart';
import './pages/youtube_page.dart';
import './widget/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => const HomePage(),
        "/VOD": (context) => const VodPage(),
        "/Replay": (context) => const ReplayPage(),
        "/Youtube": (context) => const YoutubePage(),
        "/MyList": (context) => const MyListPage(),
        "/VOD/movieLaunch": (context) => const MovieLaunchPage(),
        "/VOD/movieLaunch2": (context) => const MovieLaunchPage2(),
      },
    );
  }
}

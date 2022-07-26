//import 'package:devmobilexam/widget/custom_navbar.dart';
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
      },
    );
  }
}

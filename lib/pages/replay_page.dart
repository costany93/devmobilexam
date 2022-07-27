import 'package:devmobilexam/providers/movie_my_list_data.dart';
import 'package:devmobilexam/providers/replay_data.dart';
import 'package:devmobilexam/widget/custom_navbar.dart';
import 'package:devmobilexam/widget/my_drawer.dart';
import 'package:devmobilexam/widget/my_movie_page_widget.dart';
import 'package:devmobilexam/widget/replay_movie_widget.dart';
import 'package:flutter/material.dart';

class ReplayPage extends StatelessWidget {
  const ReplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            // ignore: avoid_print
            onPressed: () => print('clic'),
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('Replay TV'),
      ),
      drawer: const MyDrawer(), //drawer
      bottomNavigationBar: const CustomNavBar(), //bottomnavbar
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "KOYAR DA AL-QURANI",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: mediaQuery.size.height * 0.7,
            width: mediaQuery.size.width,
            child: ListView.builder(
              itemBuilder: (ctx, index) => ReplayMovieWidget(
                  id: REPLAY_DATA[index].id,
                  imageAsset: REPLAY_DATA[index].cover,
                  title: REPLAY_DATA[index].title),
              itemCount: REPLAY_DATA.length,
            ),
          ),
        ],
      ),
      // )
    );
  }
}

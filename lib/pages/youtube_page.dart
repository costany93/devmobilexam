import 'package:devmobilexam/providers/movie_my_list_data.dart';
import '../widget/youtube_movie_widget.dart';
import '../widget/custom_navbar.dart';
import '../widget/my_drawer.dart';
import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({Key? key}) : super(key: key);

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
        title: const Text('Youtube'),
      ),
      drawer: const MyDrawer(), //drawer
      bottomNavigationBar: const CustomNavBar(), //bottomnavbar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Playlist I YouTube",
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (ctx, index) => YoutubeMovieWidget(
                    id: MOVIE_MY_LIST_DATA[index].id,
                    imageAsset: MOVIE_MY_LIST_DATA[index].cover,
                    title: MOVIE_MY_LIST_DATA[index].title),
                itemCount: MOVIE_MY_LIST_DATA.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

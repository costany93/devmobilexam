import '../providers/movie_my_list_data.dart';
//import '../providers/vod_latest_added_data.dart';
import '../widget/custom_navbar.dart';
import '../widget/my_drawer.dart';
import '../widget/my_movie_page_widget.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key}) : super(key: key);

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
        title: const Text('MY LIST'),
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
                  "My Movies",
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
              itemBuilder: (ctx, index) => MyMoviePageWidget(
                  id: MOVIE_MY_LIST_DATA[index].id,
                  imageAsset: MOVIE_MY_LIST_DATA[index].cover,
                  title: MOVIE_MY_LIST_DATA[index].title),
              itemCount: MOVIE_MY_LIST_DATA.length,
            ),
          ),
        ],
      ),

      // )
    );
  }
}

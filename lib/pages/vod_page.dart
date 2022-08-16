import 'package:devmobilexam/providers/vod_hausa_data.dart';
import 'package:devmobilexam/providers/vod_kids_data.dart';
import 'package:devmobilexam/widget/vod_hausa_item.dart';
import 'package:devmobilexam/widget/vod_religion_items.dart';
import '../providers/vod_religion_movies_data.dart';
import '../providers/vod_latest_added_data.dart';
import '../providers/vod_most_popular_data.dart';
import '../widget/custom_navbar.dart';
import '../widget/my_drawer.dart';
import '../widget/vod_latest_added_item.dart';
import '../widget/vod_most_popular_item.dart';
import 'package:flutter/material.dart';

class VodPage extends StatelessWidget {
  const VodPage({Key? key}) : super(key: key);

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
        title: const Text('Gaskia VOD'),
      ),
      drawer: const MyDrawer(), //drawer
      bottomNavigationBar: const CustomNavBar(), //bottomnavbar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const ItemTitle(title: 'Latest added titles'),
            SizedBox(
              height: mediaQuery.size.height * 0.89,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Latest added titles',
                    style: TextStyle(fontSize: 15),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => VodLatestAddedItem(
                          id: VOD_DATA[index].id,
                          image: VOD_DATA[index].cover,
                          title: VOD_DATA[index].title),
                      itemCount: VOD_DATA.length,
                    ),
                  ),
                  //            const Text("                      "),
                  const Text(
                    'Most Popular',
                    style: TextStyle(fontSize: 15),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => VodMostPopularItem(
                          id: MOSTPOPULAR_DATA[index].id,
                          image: MOSTPOPULAR_DATA[index].cover,
                          title: MOSTPOPULAR_DATA[index].title),
                      itemCount: MOSTPOPULAR_DATA.length,
                    ),
                  ),
                  //              const Text("                      "),
                  const Text(
                    'Religion Movies',
                    style: TextStyle(fontSize: 15),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => VodReligionItem(
                          id: RELIGIONMOVIES_DATA[index].id,
                          image: RELIGIONMOVIES_DATA[index].cover,
                          title: RELIGIONMOVIES_DATA[index].title),
                      itemCount: RELIGIONMOVIES_DATA.length,
                    ),
                  ),
                  //                const Text("                      "),
                  const Text(
                    'Hausa with English CC',
                    style: TextStyle(fontSize: 15),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => VodHausaItem(
                          id: HAUSA_DATA[index].id,
                          image: HAUSA_DATA[index].cover,
                          title: HAUSA_DATA[index].title),
                      itemCount: HAUSA_DATA.length,
                    ),
                  ),
//                  const Text("                      "),
                  const Text(
                    'Kids Movies',
                    style: TextStyle(fontSize: 15),
                    //overflow: TextOverflow.ellipsis,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => VodHausaItem(
                          id: KIDS_DATA[index].id,
                          image: KIDS_DATA[index].cover,
                          title: KIDS_DATA[index].title),
                      itemCount: KIDS_DATA.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

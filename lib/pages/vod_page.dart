import 'package:devmobilexam/providers/vod_latest_added_data.dart';
import 'package:devmobilexam/providers/vod_most_popular_data.dart';
import 'package:devmobilexam/widget/custom_navbar.dart';
import 'package:devmobilexam/widget/my_drawer.dart';
import 'package:devmobilexam/widget/vod_latest_added_item.dart';
import 'package:devmobilexam/widget/vod_most_popular_item.dart';
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
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.5,
                child: Column(
                  children: [
                    const Text(
                      'Latest added titles',
                      style: TextStyle(fontSize: 20),
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
                    const Text(
                      'Most Popular',
                      style: TextStyle(fontSize: 20),
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
                  ],
                ),
              ),
            ],
          ),
        )
        // )
        );
  }
}

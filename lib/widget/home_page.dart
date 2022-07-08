import 'package:devmobilexam/widget/custom_navbar.dart';
import 'package:devmobilexam/widget/movie_item.dart';
import 'package:devmobilexam/widget/my_drawer.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:devmobilexam/providers/movie_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          title: const Text('Home'),
        ),
        drawer: const MyDrawer(), //drawer
        bottomNavigationBar: const CustomNavBar(), //bottomnavbar
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                //width: double.infinity,
                height: mediaQuery.size.height * 0.5,
                child: Column(
                  children: [
                    const Text(
                      'Latest movies',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => MovieItem(
                            id: MEALS_DATA[index].id,
                            imageAsset: MEALS_DATA[index].cover,
                            title: MEALS_DATA[index].title),
                        itemCount: MEALS_DATA.length,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                //width: double.infinity,
                height: mediaQuery.size.height * 0.5,
                child: Column(
                  children: [
                    const Text(
                      'Latest TV Series',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => MovieItem(
                            id: MEALS_DATA[index].id,
                            imageAsset: MEALS_DATA[index].cover,
                            title: MEALS_DATA[index].title),
                        itemCount: MEALS_DATA.length,
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

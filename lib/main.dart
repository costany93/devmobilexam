import 'package:devmobilexam/providers/movie_data.dart';
import 'package:devmobilexam/widget/movie_item.dart';
import 'package:devmobilexam/widget/my_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () => print('clic'),
              icon: Icon(Icons.search),
            ),
          ],
          title: Text('Home'),
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
          itemBuilder: (ctx, index) => MovieItem(),
          itemCount: MEALS_DATA.length,
        ),
      ),
    );
  }
}

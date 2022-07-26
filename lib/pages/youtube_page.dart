import 'package:devmobilexam/widget/custom_navbar.dart';
import 'package:devmobilexam/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Column(),
        )
        // )
        );
  }
}

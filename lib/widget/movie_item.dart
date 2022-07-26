//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MovieItem(
      {required this.id, required this.imageAsset, required this.title});
  final String id;
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return InkWell(
      // ignore: avoid_print
      onTap: () => print('cliquer'),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            Container(
                width: mediaQuery.size.width * 0.27,
                height: mediaQuery.size.height * 0.35,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(imageAsset),
                    fit: BoxFit.fitHeight,
                  ),
                )),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title),
                Icon(Icons.more_vert),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

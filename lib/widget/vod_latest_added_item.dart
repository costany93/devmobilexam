import 'package:flutter/material.dart';

class VodLatestAddedItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const VodLatestAddedItem(
      {required this.id, required this.image, required this.title});
  final String id;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return InkWell(
      // ignore: avoid_print
      //onTap: () => print('cliquer'),
      onTap: () => (Navigator.pushNamed(context, "/VOD/movieLaunch")),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            Container(
                width: mediaQuery.size.width * 0.16,
                height: mediaQuery.size.height * 0.14,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(image),
                    fit: BoxFit.fitHeight,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

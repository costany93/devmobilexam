import 'package:flutter/material.dart';

class VodMostPopularItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const VodMostPopularItem(
      {required this.id, required this.image, required this.title});
  final String id;
  final String title;
  final String image;

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
                width: mediaQuery.size.width * 0.2,
                height: mediaQuery.size.height * 0.2,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(image),
                    fit: BoxFit.fitHeight,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

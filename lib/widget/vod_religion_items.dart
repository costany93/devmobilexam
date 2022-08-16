import 'package:devmobilexam/pages/movie_launch_page.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class VodReligionItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const VodReligionItem(
      {required this.id, required this.image, required this.title});
  final String id;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return InkWell(
      // ignore: avoid_print
      onTap: () => Navigator.of(context).pushNamed(MovieLaunchPage.routeName,
          arguments: {'id': id, 'title': title, 'image': image}),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            Container(
                width: mediaQuery.size.width * 0.15,
                height: mediaQuery.size.height * 0.15,
                margin: const EdgeInsets.symmetric(horizontal: 3),
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

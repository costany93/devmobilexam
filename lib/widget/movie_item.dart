import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem(
      {required this.id, required this.imageAsset, required this.title});
  final String id;
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: () => print('cliquer'),
      child: Container(
        //color: Colors.red,
        child: Column(
          children: [
            Container(
                width: mediaQuery.size.width * 0.4,
                height: mediaQuery.size.width * 0.7,
                margin: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(imageAsset),
                    fit: BoxFit.fitHeight,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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

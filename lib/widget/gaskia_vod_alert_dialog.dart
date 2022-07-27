import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GaskiaVodAlertDialog extends StatelessWidget {
  GaskiaVodAlertDialog(
      {required this.id, required this.imageAsset, required this.title});
  final String id;
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth * 0.4,
            child: Container(
                width: constraints.maxWidth * 0.4,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(imageAsset),
                    fit: BoxFit.fitHeight,
                  ),
                )),
          ),
          Container(
            color: Colors.black,
            height: constraints.maxHeight,
            width: constraints.maxWidth * 0.6,
            padding: EdgeInsets.all(mediaQuery.size.width * 0.05),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                  const Text(
                    '* Comedy * Thriller',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  const Text(
                    '* 2021 * 1h15',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0XFFFFA213)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Play',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.favorite,
                            color: Color(0XFFFFA213),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.share,
                            color: Color(0XFFFFA213),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}

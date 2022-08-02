import 'package:flutter/material.dart';

class YoutubeMovieWidget extends StatelessWidget {
  const YoutubeMovieWidget(
      {required this.id, required this.imageAsset, required this.title});

  final String id;
  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      //margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(mediaQuery.size.height * 0.02),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: mediaQuery.size.height * 0.003,
                  style: BorderStyle.solid), //Border.all
              /*** The BorderRadius widget  is here ***/
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ), //BorderRadius.all
            ),
            height: mediaQuery.size.height * 0.2,
            width: mediaQuery.size.width * 0.4,
            //color: Colors.red,
            child: LayoutBuilder(
              builder: ((context, constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}

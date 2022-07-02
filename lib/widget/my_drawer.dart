import 'package:devmobilexam/widget/custom_list_tile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 27),
            child: Image.asset('assets/images/logo.png'),
          ),
          Container(
            color: Colors.black,
            child: Column(
              children: const [
                CustomListTileDrawer(
                  CustomLeading: Icons.home,
                  CustomText: 'Home',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.movie_creation,
                  CustomText: 'VOD',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.refresh,
                  CustomText: 'Replay Tv',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.youtube_searched_for,
                  CustomText: 'Youtube',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.favorite,
                  CustomText: 'Favoris',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                SizedBox(
                  height: 35,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.facebook,
                  CustomText: 'Facebook',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.settings,
                  CustomText: 'Privacy policy',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.info,
                  CustomText: 'About',
                  CustomTrailing: Icons.arrow_right_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

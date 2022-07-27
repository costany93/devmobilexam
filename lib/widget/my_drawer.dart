import '../widget/custom_list_tile_drawer.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            //padding: EdgeInsets.symmetric(vertical: 27),
            // ignore: sort_child_properties_last
            child: Image.asset('assets/images/logo.png'),
            height: mediaQuery.size.height * 0.25,
          ),
          Container(
            height: mediaQuery.size.height * 0.75,
            color: Colors.black,
            child: Column(
              children: const [
                CustomListTileDrawer(
                  CustomLeading: Icons.home,
                  CustomText: 'Home',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/',
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.movie_creation,
                  CustomText: 'VOD',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/VOD',
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.refresh,
                  CustomText: 'Replay TV',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/Replay',
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.youtube_searched_for,
                  CustomText: 'Youtube',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/Youtube',
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.favorite,
                  CustomText: 'Favoris',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/MyList',
                ),
                SizedBox(
                  height: 35,
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.facebook,
                  CustomText: 'Facebook',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/',
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.settings,
                  CustomText: 'Privacy policy',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/',
                ),
                CustomListTileDrawer(
                  CustomLeading: Icons.info,
                  CustomText: 'About',
                  CustomTrailing: Icons.arrow_right_rounded,
                  MyRouteName: '/',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

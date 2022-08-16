import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(Icons.home, size: 25, color: Colors.black54),
                  const Text(
                    'Home',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              )),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/VOD");
              },
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.movie_creation,
                    size: 25,
                    color: Colors.black54,
                  ),
                  const Text(
                    'VOD',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              )),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/Replay");
            },
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.replay,
                  size: 25,
                  color: Colors.black54,
                ),
                const Text(
                  'Replay',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/Youtube");
            },
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.youtube_searched_for,
                  size: 25,
                  color: Colors.black54,
                ),
                const Text(
                  'Youtube',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/MyList");
            },
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.list,
                  size: 25,
                  color: Colors.black54,
                ),
                const Text(
                  'My List',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

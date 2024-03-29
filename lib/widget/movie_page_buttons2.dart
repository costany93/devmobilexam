import 'package:flutter/material.dart';

class MoviePageButtons2 extends StatelessWidget {
  const MoviePageButtons2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.circle,
            color: Colors.orange,
            size: 7,
          ),
          Text("Action"),
          Text("   "),
          Icon(
            Icons.circle,
            color: Colors.orange,
            size: 7,
          ),
          Text("Hero"),
          Text("       "),
          // ignore: prefer_const_constructors
          Icon(
            Icons.favorite,
            color: Colors.orange,
            size: 30,
          ),
          Text("    "),
          Icon(
            Icons.share,
            color: Colors.orange,
            size: 30,
          ),
          const Text("               "),
          // ignore: prefer_const_constructors
          const Icon(
            Icons.circle,
            color: Colors.orange,
            size: 7,
          ),
          const Text("2021"),
          // ignore: prefer_const_constructors
          const Icon(
            Icons.circle,
            color: Colors.orange,
            size: 7,
          ),
          const Text("1h15min"),
        ],
      ),
    );
  }
}

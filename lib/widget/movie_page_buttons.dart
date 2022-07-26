// ignore_for_file: avoid_unnecessary_containers

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MoviePageButtons extends StatelessWidget {
  const MoviePageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.circle,
            color: Colors.orange,
            size: 7,
          ),

          const Text("Comedy"),
          const Text("   "),
          const Icon(
            Icons.circle,
            color: Colors.orange,
            size: 7,
          ),

          const Text("Thriller"),
          const Text("       "),
          // ignore: prefer_const_constructors
          Container(
            child: const Icon(
              Icons.favorite_border,
              color: Colors.orange,
              size: 30,
            ),
          ),
          const Text("    "),
          const Icon(
            Icons.share,
            color: Colors.orange,
            size: 30,
          ),
        ],
      ),
    );
  }
}

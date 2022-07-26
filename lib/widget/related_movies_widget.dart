import 'package:flutter/material.dart';

class RelatedMoviesWidget extends StatelessWidget {
  const RelatedMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        const Text(
          'RELATED MOVIES',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          //textAlign: TextAlign.left,
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            for (int i = 1; i < 6; i++)
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.asset(
                    "assets/images/$i.jpeg",
                    height: 190,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ]),
        )
      ],
    );
  }
}

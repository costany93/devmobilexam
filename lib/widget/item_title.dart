import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  final String title;
  const ItemTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),

              /* Text(
                  text: title,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: bold),
              Text(text: 'view all', color: Colors.grey),*/
            ],
          ),
        ));
  }
}

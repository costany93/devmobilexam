import 'package:devmobilexam/widget/custom_navbar.dart';
import 'package:devmobilexam/widget/episodes.dart';
import 'package:devmobilexam/widget/movie_page_buttons2.dart';
import 'package:flutter/material.dart';

class MovieLaunchPage2 extends StatelessWidget {
  const MovieLaunchPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //   Opacity(
          // opacity: 0.1,
          //for (var i = 0; i < 6; i++)
          //if (i == 0)
          Image.asset(
            "assets/images/mostpopular1.jpeg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          //  ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 45, right: 45, left: 45),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withOpacity(0.5),
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  const SizedBox(height: 65),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "A Netflix original series",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                  //const SizedBox(height: 4),
                  const MoviePageButtons2(), //call of MoviePageButtons from widget
                  const SizedBox(height: 10),
                  const Text(
                    "See some descriptions of the movie here",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Episodes(), //call of the episode's widget from widget
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

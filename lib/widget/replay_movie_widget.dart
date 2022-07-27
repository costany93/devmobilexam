import '../pages/replay_page.dart';
import '../widget/gaskia_vod_alert_dialog.dart';
import '../widget/replay_alert_dialog.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ReplayMovieWidget extends StatelessWidget {
  ReplayMovieWidget(
      {required this.id, required this.imageAsset, required this.title});
  final String id;
  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: () => showDialog<void>(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                    height: mediaQuery.size.height * 0.25,
                    width: mediaQuery.size.width,
                    color: Colors.black,
                    child: ReplayAlertDialog(
                        id: id, imageAsset: imageAsset, title: title)),
              )
            ],
          );
        },
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              height: mediaQuery.size.height * 0.15,
              width: mediaQuery.size.width,
              child: LayoutBuilder(
                builder: ((context, constraints) {
                  return Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.3,
                        height: constraints.maxHeight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      /* Container(
                        margin: const EdgeInsets.only(
                          top: 40,
                          left: 0.2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.5),
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 15,
                        ),
                      ), */
                      Container(
                        padding:
                            EdgeInsets.only(left: constraints.maxWidth * 0.03),
                        width: constraints.maxWidth * 0.65,
                        height: constraints.maxHeight,
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(1),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.white38,
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ]),
                        child: Padding(
                          padding:
                              EdgeInsets.all(mediaQuery.size.height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "March,15,2022 I 12:20",
                                style: TextStyle(
                                  fontSize: mediaQuery.size.height * 0.02,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: mediaQuery.size.height * 0.007),
              width: mediaQuery.size.width,
              color: Color.fromARGB(255, 218, 218, 218),
              height: mediaQuery.size.height * 0.002,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yogzen_v_1/global/color.dart';

import 'package:yogzen_v_1/screens/home/home.dart';

class YogaCard extends StatelessWidget {
  final String postYoga;
  final String des;
  final String url;
  final List steps;

  const YogaCard(
      {required this.postYoga, required this.des, required this.url, required this.steps});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: ((context) =>
        //       YogaTutorial(url: url, steps: steps, des: des)),
        // ));
      },
      child: Container(
        padding: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  postYoga,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              des,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
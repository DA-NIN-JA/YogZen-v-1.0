import 'package:flutter/material.dart';
import 'package:yogzen_v_1/global/color.dart';
import 'package:yogzen_v_1/screens/yoga/yoga_tutorial.dart';
import 'package:yogzen_v_1/screens/home/home.dart';

class RecommendedCard extends StatelessWidget {
  final String postYoga;
  final String des;
  final String url;
  final List steps;

  RecommendedCard(
      {required this.postYoga, required this.des, required this.url, required this.steps});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: ((context) => YogaTutorial(
                steps: steps,
                url: url,
                des: des,
              )),
        ));
      },
      child: Container(
        padding: EdgeInsets.only(right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: double.infinity,
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
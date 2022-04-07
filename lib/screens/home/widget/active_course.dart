import 'package:course_app/constant/colors.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently active', 'view all'),
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: kFontLight.withOpacity(0.1),
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('assets/images/progress.png',
                              width: 60)),
                      SizedBox(width: 15),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kasuari yang Sombong',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kFont),
                            ),
                            Text(
                              '13 Halaman',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: kFontLight),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 5.0,
                    percent: 0.61,
                    center: Text(
                      '61%',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    progressColor: kAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

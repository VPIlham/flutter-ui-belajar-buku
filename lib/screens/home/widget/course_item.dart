import 'package:course_app/constant/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:course_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 290,
            width: 250,
            decoration: BoxDecoration(
                color: kPrimary, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              course.authorImg,
                              width: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              course.author,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(
                                course.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: kFont),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                '2h 22min',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: kFontLight),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 75,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Detail(course)));
              },
              style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Start'),
            ),
          )
        ],
      ),
    );
  }
}

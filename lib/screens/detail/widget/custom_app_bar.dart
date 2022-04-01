import 'package:course_app/constant/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;

  const CustomAppBar(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                height: 30,
              ),
            ],
          ),
          Positioned(
              bottom: 5,
              right: 40,
              child: Container(
                height: 50,
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text('Start class'),
                ),
              )),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                iconSize: 20,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.bookmark),
                color: Colors.white,
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

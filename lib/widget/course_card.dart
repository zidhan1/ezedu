import 'package:ezedu/pages/video_page.dart';
import 'package:ezedu/theme.dart';
import 'package:flutter/material.dart';

import '../model/Course.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              course.imgUrl,
              width: 95,
              height: 90,
            ),
            SizedBox(
              width: 37,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  '14 Videos 6h 24m',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VideoPage()));
                  },
                  child: Text(
                    'View',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ezedu/model/Course.dart';
import 'package:ezedu/widget/course_card.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'img/bg_home.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Center(
                    child: Text(
                      'EZEDU.',
                      style: whiteTextStyle.copyWith(
                          fontSize: 36, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Learning & Earning,',
                    style: whiteTextStyle.copyWith(
                        fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Happy Beginning!',
                    style: whiteTextStyle.copyWith(
                        fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                        hintText: 'Search course',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _searchController.clear();
                            },
                            icon: Icon(Icons.clear))),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Popular Course',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // NOTE : CARD
                CourseCard(Course(
                    id: 1,
                    imgUrl: 'img/marketing_ilustration.png',
                    title: 'Digital Marketing')),
                SizedBox(
                  height: 15,
                ),
                CourseCard(Course(
                    id: 2,
                    imgUrl: 'img/design_ilustration.png',
                    title: 'UI/UX Design')),
                SizedBox(
                  height: 15,
                ),
                CourseCard(Course(
                    id: 3,
                    imgUrl: 'img/coding_ilustration.png',
                    title: 'Basic HTML,CSS')),
                SizedBox(
                  height: 15,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}

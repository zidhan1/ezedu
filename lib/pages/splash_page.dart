import 'package:ezedu/pages/home_page.dart';
import 'package:ezedu/pages/register_page.dart';
import 'package:ezedu/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EZEDU.',
              style: blackTextStyle.copyWith(
                  fontSize: 36, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'img/login_ilustration.png',
              height: 258,
              width: 328,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Learn on your',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                  fontSize: 36, fontWeight: FontWeight.w400),
            ),
            Text(
              'Schedule',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                  fontSize: 36, fontWeight: FontWeight.w700),
            ),
            Text(
              'Provide practical and systematic learning, improving the quality of education.',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: MediaQuery.of(context).size.width - (2 * 30),
                height: 47,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        backgroundColor: Colors.black87),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (content) => HomePage()));
                    },
                    child: Text(
                      'Login',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ))),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width - (2 * 30),
                height: 47,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        foregroundColor: Colors.black,
                        side: BorderSide(color: Colors.black),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Sign up',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ))),
          ],
        ),
      )),
    );
  }
}

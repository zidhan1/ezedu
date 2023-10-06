import 'package:flutter/material.dart';

import '../theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text(
                'REGISTER',
                style: blackTextStyle.copyWith(
                    fontSize: 36, fontWeight: FontWeight.w700),
              ),
              Image.asset(
                'img/register_ilustration.png',
                height: 258,
                width: 328,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: blackTextStyle.copyWith(fontSize: 14),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Full Name'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: TextField(
                  style: blackTextStyle.copyWith(fontSize: 14),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Email'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: TextField(
                  obscureText: true,
                  style: blackTextStyle.copyWith(fontSize: 14),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Password'),
                ),
              ),
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
                          backgroundColor: Colors.black87),
                      onPressed: () {},
                      child: Text(
                        'Create account',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

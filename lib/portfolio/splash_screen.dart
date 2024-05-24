

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/home_screen.dart';
import 'package:portfolio/widget/textstyle.dart';
class SplashScreen extends StatefulWidget {
  static const splashRoute = '/splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   /* Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, SplashScreen.splashRoute);
    });*/
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Md Sharif Hossain' , style: nameStyle,),
            SizedBox(
              height: 10,
            ),
            Text('Junior Software Engineer', style: othersTextStyle,),
            SizedBox(
              height: 10,
            ),
            Text('Circle Technology Limited', style: othersTextStyle,),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Use apps, Maximize the potential of your Business', style: nameStyle, textAlign: TextAlign.center,),
                Text('Hire Me', style: nameStyle,),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 10,
                    ),
                    Text('sharifdu44@gmail.com', style: othersTextStyle,),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(
                  width: 10,
                ),
                Text('+8801517053529', style: othersTextStyle,),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person),
          onPressed: (){
        Navigator.pushNamed(context, HomeScreen.homeRoute);
      }),


    );
  }
}

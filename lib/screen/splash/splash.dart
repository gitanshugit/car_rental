import 'dart:async';
import 'package:car_rental/screen/splash/screenone.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/screen/home/home.dart';
import 'package:car_rental/widgets/global.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTime() {
    Timer(
      Duration(seconds: 3),
      () async {
        if (firebaseAuth.currentUser != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Screenone(),
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    setTime();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome and book the ride whenever you want!",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "VarelaRound",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Text(
              "",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "VarelaRound",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Text(
              "",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "VarelaRound",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Lottie.asset('assets/lottie/car.json'),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "VarelaRound",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Text(
              "",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "VarelaRound",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Text(
              "Car Rental App for Android",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "VarelaRound",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Text(
                "EXPLORE, BOOK, DRIVE !!",
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "VarelaRound",
                    color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                "Developed by - Gitanshu",
                style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: "VarelaRound",
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

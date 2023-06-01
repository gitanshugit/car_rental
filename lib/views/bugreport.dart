import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class BugReport extends StatefulWidget {
  String? username;
  String? useremail;

  BugReport({this.username, this.useremail});

  @override
  _BugReportState createState() => _BugReportState();
}

class _BugReportState extends State<BugReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "My Profile",
          style: TextStyle(
              fontSize: 21.0,
              fontFamily: "SourceSansPro",
              letterSpacing: 1,
              color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Shimmer.fromColors(
                baseColor: Color.fromARGB(255, 255, 255, 255),
                highlightColor: Color.fromARGB(255, 255, 255, 255),
                child: Text(
                  " Dear, " +
                      widget.username! +
                      " ! ♥ \n Welcome to your profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontFamily: "SourceSansPro"),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Center(
                      child: Lottie.asset(
                    'assets/lottie/profile.json',
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

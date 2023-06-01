import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        flexibleSpace: Container(),
        title: Text(
          "",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "VarelaRound",
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Sizer(
          builder: (BuildContext context, Orientation orientation,
              DeviceType deviceType) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    "Hey, thanks for using our app..😊",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Bebasneue",
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Center(
                        child: Lottie.asset('assets/lottie/thank.json',
                            height: 200)),
                  ),
                  Text(
                    "This Car Rental app is made by gitanshu",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Bebasneue",
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

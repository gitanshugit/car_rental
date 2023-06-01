import 'package:flutter/material.dart';
import 'package:car_rental/screen/splash/screentwo.dart';
import 'package:lottie/lottie.dart';

class Screenone extends StatefulWidget {
  @override
  _ScreenoneState createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? coloranimation;
  Animation? sizeanimation;
  Animation? sizeContainerWidthanimation;
  Animation? sizeContainerHeightanimation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    sizeanimation = Tween<double>(begin: 0.0, end: 75.0).animate(controller!);
    sizeContainerWidthanimation =
        Tween<double>(begin: 0.0, end: 180.0).animate(controller!);
    sizeContainerHeightanimation =
        Tween<double>(begin: 0.0, end: 80.0).animate(controller!);
    coloranimation =
        ColorTween(begin: Colors.white, end: Colors.green).animate(controller!);

    controller!.addListener(() {
      setState(() {});
    });
    controller!.forward();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "Hey! Welcome to CAR RENTAL App \n \n Planning to go on a trip?",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "SourceSansPro",
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(
              height: 10.0,
            ),
            Lottie.asset('assets/lottie/scr1.json'),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screentwo(),
                  ),
                );
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  color: coloranimation!.value,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                height: sizeContainerHeightanimation!.value,
                width: sizeContainerWidthanimation!.value,
                child: Icon(
                  Icons.arrow_forward,
                  size: sizeanimation!.value,
                  color: Colors.white,
                ),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

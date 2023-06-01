import 'package:flutter/material.dart';
import 'package:car_rental/screen/auth/registration.dart';

import 'login.dart';

class AuthSCreen extends StatefulWidget {
  const AuthSCreen({Key? key}) : super(key: key);

  @override
  _AuthSCreenState createState() => _AuthSCreenState();
}

class _AuthSCreenState extends State<AuthSCreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          title: Center(
            child: Text(
              "Car Rental - Authentication",
              style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 27.0,
                  letterSpacing: 1.5),
            ),
          ),
          bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            tabs: [
              Tab(
                icon: Icon(Icons.app_registration_rounded),
                text: "Register",
              ),
              Tab(
                icon: Icon(Icons.login),
                text: "Sign In",
              ),
            ],
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              Registration(),
              LogIn(),
            ],
          ),
        ),
      ),
    );
  }
}

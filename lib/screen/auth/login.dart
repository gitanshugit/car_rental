import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/screen/auth/authscreen.dart';
import 'package:car_rental/screen/home/home.dart';
import 'package:car_rental/widgets/customtextfield.dart';
import 'package:car_rental/widgets/errordialog.dart';
import 'package:car_rental/widgets/global.dart';
import 'package:car_rental/widgets/loadingdialog.dart';
import 'package:lottie/lottie.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController passwordeditingcontroller = TextEditingController();
  TextEditingController emaileditingcontroller = TextEditingController();
  final GlobalKey<FormState> globalkeys = GlobalKey<FormState>();

  formvalidate() {
    if (passwordeditingcontroller.text.isNotEmpty &&
        emaileditingcontroller.text.isNotEmpty) {
      //all good login
      loginUser();
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return ErrorDialog(
            message: "Please fill all details",
          );
        },
      );
    }
  }

  loginUser() async {
    showDialog(
      context: context,
      builder: (context) {
        return LoadingDialog(
          message: "Checking Credentials",
        );
      },
    );

    User? currentUser;
    await firebaseAuth
        .signInWithEmailAndPassword(
      email: emaileditingcontroller.text.trim(),
      password: passwordeditingcontroller.text.trim(),
    )
        .then((auth) {
      currentUser = auth.user!;
    }).catchError(
      (e) {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return ErrorDialog(
              message: e!.message.toString(),
            );
          },
        );
      },
    );
    if (currentUser != null) {
      getDataFromLocal(currentUser!);
    }
  }

  getDataFromLocal(User? currentUser) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(currentUser!.uid)
        .get()
        .then(
      (snap) async {
        if (snap.exists) {
          sharedPreferences!.setString("userName", snap.data()!["userName"]);
          sharedPreferences!.setString("userEmail", snap.data()!["userEmail"]);
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (c) => HomePage(),
            ),
          );
        } else {
          await firebaseAuth.signOut();
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(
                message: "No Such Profile Exists",
              );
            },
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => AuthSCreen(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Form(
              key: globalkeys,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Lottie.asset('assets/lottie/login2.json', width: 250),
                  CustomTextField(
                    textcontroller: emaileditingcontroller,
                    labelText: "Email",
                    hintText: "Enter your email",
                    icon: Icons.email,
                    isObsecure: false,
                  ),
                  CustomTextField(
                    textcontroller: passwordeditingcontroller,
                    labelText: "Password",
                    hintText: "Enter your password",
                    icon: Icons.lock,
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      formvalidate();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.height * 0.4,
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "SourceSansPro",
                          ),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/screen/home/home.dart';
import 'package:car_rental/widgets/customtextfield.dart';
import 'package:car_rental/widgets/errordialog.dart';
import 'package:car_rental/widgets/global.dart';
import 'package:car_rental/widgets/loadingdialog.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController rollcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();

  validate() {
    if (namecontroller.text.isNotEmpty &&
        rollcontroller.text.isNotEmpty &&
        phonecontroller.text.isNotEmpty &&
        emailcontroller.text.isNotEmpty &&
        passwordcontroller.text.isNotEmpty) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return LoadingDialog(
            message: "Registering..",
          );
        },
      );
      autheticateUser();
    } else {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return ErrorDialog(message: "Please fill all fields");
        },
      );
    }
  }

  void autheticateUser() async {
    User? currentUser;
    await firebaseAuth
        .createUserWithEmailAndPassword(
      email: emailcontroller.text.trim(),
      password: passwordcontroller.text.trim(),
    )
        .then((auth) {
      currentUser = auth.user;
    }).catchError((e) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (context) {
          return ErrorDialog(message: e!.message.toString());
        },
      );
    });
    if (currentUser != null) {
      saveDataToFirebase(currentUser!).then((value) {
        Navigator.pop(context);
        Route newRoute = MaterialPageRoute(builder: (c) => HomePage());
        Navigator.pushReplacement(context, newRoute);
      });
    }
  }

  Future saveDataToFirebase(User? currentUser) async {
    FirebaseFirestore.instance.collection("users").doc(currentUser!.uid).set(
          ({
            "userName": namecontroller.text.toString(),
            "rollno": rollcontroller.text.toString(),
            "phone": phonecontroller.text.toString(),
            "userEmail": currentUser.email.toString(),
            "userUid": currentUser.uid,
          }),
        );

    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setString(
      "userName",
      namecontroller.text.toString(),
    );
    await sharedPreferences.setString(
      "userEmail",
      namecontroller.text.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Form(
              key: _globalkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Lottie.asset('assets/lottie/login1.json', width: 250),
                  SizedBox(
                    height: 40.0,
                  ),
                  CustomTextField(
                    textcontroller: namecontroller,
                    hintText: "Enter your name",
                    icon: Icons.face,
                    isObsecure: false,
                    labelText: "Name",
                  ),
                  CustomTextField(
                    textcontroller: rollcontroller,
                    hintText: "XXXX-XXXX-XXXX",
                    icon: Icons.numbers,
                    isObsecure: false,
                    labelText: "Aadhar Number",
                  ),
                  CustomTextField(
                    textcontroller: phonecontroller,
                    hintText: "Enter your phone number",
                    icon: Icons.call,
                    isObsecure: false,
                    labelText: "Phone No.",
                  ),
                  CustomTextField(
                    textcontroller: emailcontroller,
                    labelText: "Email",
                    hintText: "Enter your email",
                    icon: Icons.mail,
                    isObsecure: false,
                  ),
                  CustomTextField(
                    textcontroller: passwordcontroller,
                    labelText: "Password",
                    hintText: "Set your password",
                    icon: Icons.lock,
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      validate();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.height * 0.4,
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: "SourceSansPro",
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

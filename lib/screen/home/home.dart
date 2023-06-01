import 'package:car_rental/screen/auth/logout.dart';
import 'package:car_rental/views/clubdesign.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/screen/home/explorepage.dart';
import 'package:car_rental/screen/home/profilehome.dart';
import 'package:car_rental/screen/home/settingspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;
  final screen = [
    ProfileHome(),
    ClubDesign(),
    ExplorePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final item = [
      Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon(
              Icons.home,
              color: Colors.black,
            ),
            Text("Home"),
          ],
        ),
      ),
    ];
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: SafeArea(
        top: false,
        child: ClipRRect(
          child: Scaffold(
            appBar: AppBar(
              shadowColor: Color.fromARGB(255, 0, 0, 0),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              automaticallyImplyLeading: false,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Car Rental Services",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Visibility(
                    visible: true,
                    child: Text(
                      "Made by Gitanshu",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const LogoutDialog());
                  },
                ),
              ],
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              onTap: (index) {
                setState(() {
                  _selectedPageIndex = index;
                });
              },
              items: item,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 500),
            ),
            body: screen[_selectedPageIndex],
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

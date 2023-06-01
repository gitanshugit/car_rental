import 'package:car_rental/screen/checkupdates/checkupdates.dart';
import 'package:car_rental/screen/details/audidetails.dart';
import 'package:car_rental/screen/details/marutidetails.dart';
import 'package:car_rental/screen/details/mgdetails.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text('Punjab'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Available cars in Punjab",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "VarelaRound",
                      letterSpacing: .1,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Image.asset(
                'images/audi.png',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO Text
                Text(
                  'Audi - Q5     ₹3,499 / Hour \n \n Mileage -     13.47 Kmpl',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                //TODO Button 1
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      //TODO Navigator Back to (main) Home Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AudiPage()),
                      );
                    },
                    child: Text(
                      'More information',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Text(
                  '________________________________________ ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Image.asset(
                'images/grand.png',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO Text
                Text(
                  'Maruti Grand Vitara   ₹1,499 / Hour \n \n Mileage -     27.97 Kmpl ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                //TODO Button 1
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      //TODO Navigator Back to (main) Home Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MarutiPage()),
                      );
                    },
                    child: Text(
                      'More information',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Text(
                  '________________________________________ ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Image.asset(
                'images/mg.png',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO Text
                Text(
                  'MG COMET - EV     ₹3,499 / Hour \n \n Mileage -     230 Km',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                //TODO Button 1
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      //TODO Navigator Back to (main) Home Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MGPage()),
                      );
                    },
                    child: Text(
                      'More information',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Text(
                  '________________________________________ ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

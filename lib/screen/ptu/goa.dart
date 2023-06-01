import 'package:flutter/material.dart';

import '../details/audidetails.dart';
import '../details/marutidetails.dart';
import '../details/mgdetails.dart';

class GoaPage extends StatefulWidget {
  @override
  _GoaPageState createState() => _GoaPageState();
}

class _GoaPageState extends State<GoaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text('Goa'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Available cars in Goa",
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
        ],
      ),
    );
  }
}

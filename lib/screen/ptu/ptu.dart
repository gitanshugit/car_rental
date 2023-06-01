import 'package:car_rental/screen/ptu/delhi.dart';
import 'package:car_rental/screen/ptu/goa.dart';
import 'package:car_rental/screen/ptu/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'chandigarh.dart';

class PtuPage extends StatefulWidget {
  const PtuPage({Key? key}) : super(key: key);

  @override
  _PtuPageState createState() => _PtuPageState();
}

class _PtuPageState extends State<PtuPage> {
  final List niche = [
    'Punjab',
    'Chandigarh',
    'Delhi',
    'Goa',
  ];

  final List colors = [
    Color.fromARGB(255, 125, 84, 68),
    Color.fromARGB(255, 125, 84, 68),
    Color.fromARGB(255, 125, 84, 68),
    Color.fromARGB(255, 125, 84, 68),
  ];
  final List url = [
    'https://www.ptuexam.com/PublicAnnoucements',
    'https://www.ptuexam.com/',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        flexibleSpace: Container(),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              child: Center(
                  child: Lottie.asset('assets/lottie/map.json', height: 175)),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Choose your location",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "VarelaRound",
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 1,
              childAspectRatio: (MediaQuery.of(context).size.width / (1 * 75)),
              children: List.generate(
                4,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SecondScreen(),
                              ),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChandigarhPage(),
                              ),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DelhiPage(),
                              ),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GoaPage(),
                              ),
                            );
                            break;
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          color: colors[index],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            16.0,
                            16.0,
                            0.0,
                            0.0,
                          ),
                          child: Text(
                            niche[index],
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "VarelaRound",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}

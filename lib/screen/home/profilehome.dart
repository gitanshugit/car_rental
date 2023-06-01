import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:car_rental/screen/announcements/announcements.dart';
import 'package:car_rental/screen/ptu/ptu.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  int? activeIndex = 0;
  Stream? slides;
  List? slideList;
  _querydb() {
    slides = FirebaseFirestore.instance.collection('gallery').snapshots().map(
          (list) => list.docs.map(
            (doc) => doc.data(),
          ),
        );
  }

  @override
  void initState() {
    super.initState();
    _querydb();
  }

  final List<Color> colors = [
    Color.fromARGB(255, 125, 84, 68),
    Color.fromARGB(255, 125, 84, 68),
  ];
  final List<String>? niche = [
    '💰   I want to RENT a Car',
    '🚗   I want to BOOK a Car',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Dear user, please select.. ",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: "VarelaRound",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Lottie.asset('assets/lottie/drive.json', width: 370),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 1,
              childAspectRatio: (MediaQuery.of(context).size.width / (1 * 100)),
              children: List.generate(
                2,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(2),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnnouncementPage(),
                              ),
                            );
                            break;

                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PtuPage(),
                              ),
                            );
                            break;

                          default:
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          shape: BoxShape.rectangle,
                          color: colors[index],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            50.0,
                            40.0,
                            0.0,
                            0.0,
                          ),
                          child: Text(
                            niche![index],
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
        ],
      ),
    );
  }
}

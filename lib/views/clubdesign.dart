// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:car_rental/widgets/errordialog.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ClubDesign extends StatelessWidget {
  final List<String> clubshortInfo = [
    "The official website of CT.",
    "The official website of IKGPTU",
  ];
  final List<String> joinurl = [
    'https://www.ctgroup.in/',
    'https://ptu.ac.in/',
  ];
  final List<String>? clubList = [
    'CT Group of Institutions',
    'I.K. Gujral Punjab Technical University',
  ];
  final List<Color> colors = [
    Color(0xffF19821),
    Color(0xffb457d4),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[];
          },
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Lottie.asset('assets/lottie/newsblue.json',
                          width: 150),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GridView.count(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            crossAxisCount: 1,
                            childAspectRatio:
                                (MediaQuery.of(context).size.width / (2 * 100)),
                            children: List.generate(
                              2,
                              (index) {
                                return Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
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
                                      child: Column(
                                        children: [
                                          Text(
                                            clubList![index],
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              fontFamily: "VarelaRound",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                          Expanded(
                                            child: Text(
                                              clubshortInfo[index],
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontFamily: "VarelaRound",
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () async {
                                              if (await canLaunch(
                                                  joinurl[index])) {
                                                await launch(
                                                  joinurl[index],
                                                  universalLinksOnly: true,
                                                );
                                              } else {
                                                ErrorDialog(
                                                  message: "Cannot Open",
                                                );
                                              }
                                            },
                                            child: Shimmer.fromColors(
                                              baseColor: Colors.white,
                                              highlightColor: Colors.purple,
                                              child: Text(
                                                "Visit",
                                                style:
                                                    TextStyle(fontSize: 18.0),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

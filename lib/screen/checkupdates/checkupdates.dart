import 'package:car_rental/views/blogview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CheckUpdates extends StatefulWidget {
  const CheckUpdates({Key? key}) : super(key: key);

  @override
  _CheckUpdatesState createState() => _CheckUpdatesState();
}

class _CheckUpdatesState extends State<CheckUpdates> {
  final List niche = [
    'START VERIFICATION & BOOK CAR NOW',
  ];

  final List colors = [
    Colors.green,
  ];
  final List url = [
    'https://docs.google.com/forms/d/e/1FAIpQLScpCzO39vm2V_1toR0sUa9YbgKtGAdWii_mY47LFkEIZyTESg/viewform?usp=sf_link',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        flexibleSpace: Container(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Verification",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "BebasNeue",
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Center(
                  child: Lottie.asset('assets/lottie/verification.json',
                      height: 175)),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO Text
                Text(
                  'To verify your identification we need some information from you.   \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                Text(
                  'Please keep these documents ready :-\n \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                Text(
                  'Aadhar Card \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                Text(
                  'Driving License \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                Text(
                  'Payment method will only unlock after successful ID verification \n',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                Text(
                  'Security deposit of ₹3,999 will be needed in order to book the car \n',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 1,
              childAspectRatio: (MediaQuery.of(context).size.width / (1 * 75)),
              children: List.generate(
                1,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Verification',
                                ),
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

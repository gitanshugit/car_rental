import 'package:car_rental/views/blogview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  _AnnouncementPageState createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
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
    'https://formfaca.de/sm/0G4b3nBoA',
    'https://formfaca.de/sm/0G4b3nBoA',
    'https://formfaca.de/sm/0G4b3nBoA',
    'https://formfaca.de/sm/0G4b3nBoA',
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
                  child:
                      Lottie.asset('assets/lottie/location.json', height: 175)),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Please select location",
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
            child: GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 1,
              childAspectRatio: (MediaQuery.of(context).size.width / (1 * 75)),
              children: List.generate(
                4,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(6),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Punjab',
                                ),
                              ),
                            );
                            break;

                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Chandigarh',
                                ),
                              ),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Delhi',
                                ),
                              ),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Goa',
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

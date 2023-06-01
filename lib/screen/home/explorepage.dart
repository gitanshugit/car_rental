import 'package:flutter/material.dart';
import 'package:car_rental/views/blogview.dart';
import 'package:lottie/lottie.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List<String>? semesterList = [
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8',
  ];
  final List<Color> colors = [
    Color(0xff436073),
    Color(0xff436073),
    Color(0xff436073),
    Color(0xff436073),
    Color(0xff436073),
    Color(0xff436073),
    Color(0xff436073),
    Color(0xff436073),
  ];
  final List url = [
    'https://sites.google.com/view/cttouch-notes1/home',
    'https://sites.google.com/view/cttouch-notes2/home',
    'https://sites.google.com/view/cttouch-notes3/home',
    'https://sites.google.com/view/cttouch-notes4/home',
    'https://sites.google.com/view/cttouch-notes5/home',
    'https://sites.google.com/view/cttouch-notes6/home',
    'https://sites.google.com/view/cttouch-notes7/home',
    'https://sites.google.com/view/cttouch-notes8/home',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              expandedHeight: 20.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Notes & Previous Question Paper (B.Tech)",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Center(
                    child:
                        Lottie.asset('assets/lottie/notes1.json', height: 175)),
              ),
            ),
          ];
        },
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(),
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
                              (MediaQuery.of(context).size.width / (1 * 80)),
                          children: List.generate(
                            8,
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
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Semester 1",
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
                                              title: "Semester 2",
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
                                              title: "Semester 3",
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
                                              title: "Semester 4",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 4:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Semester 5",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 5:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Semester 6",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 6:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Semester 7",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 7:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Semester 8",
                                            ),
                                          ),
                                        );
                                        break;
                                    }
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
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
                                        semesterList![index],
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
                        SizedBox(
                          height: 50.0,
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
    );
  }
}

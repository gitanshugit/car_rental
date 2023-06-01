import 'package:flutter/material.dart';
import 'package:car_rental/views/blogview.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List niche = [
    'SGPA to %',
    'Contact Faculty',
    'Jobs',
    'Contact Dev.',
  ];

  final List colors = [
    Color(0xff14b368),
    Color(0xff14b368),
    Color(0xff14b368),
    Color(0xff14b368),
  ];
  final List url = [
    'https://www.easycalculation.com/gpa/sgpa-to-percentage.php',
    'https://sites.google.com/view/cttouch-faculty/home',
    'https://www.naukri.com/',
    'https://www.github.com/gitanshugit',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Various Tools",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "SourceSansPro",
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Image.asset(
                'images/developer.png',
                height: 150.0,
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
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'SGPA to %',
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
                                  title: 'Contact Faculty',
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
                                  title: 'Jobs',
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
                                  title: 'Contact Developer',
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

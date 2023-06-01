import 'package:car_rental/screen/checkupdates/checkupdates.dart';
import 'package:flutter/material.dart';

class MGPage extends StatefulWidget {
  @override
  _MGPageState createState() => _MGPageState();
}

class _MGPageState extends State<MGPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text('Car Details'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "MG Comet - EV",
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
                  'Comet EV is available in 5 colours - Apple Green, and Starry Black, Candy White, and Starry Black, Aurora Silver, Candy White, and Starry Black. Comet EV seating capacity is 4 People. Comet EV has received Not Tested star NCAP Rating safety rating. Comet EV car is available in 3 versions and 1 fuel options - electric. The new MG Comet EV, a Hatchback from MG, was launched in India in Apr 2023. Comet EV has received a 83% rating score from our users. Comet EV is preferred for its styling and mileage. Comet EV competes with Tata Tiago EV, Citroen eC3 and Hyundai Grand i10 Nios in India.. \n',
                  style: TextStyle(
                    fontSize: 15.0,
                    height: 2,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Rent -     ₹3,099 / Hour \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),

                Text(
                  'Transmission -     Automatic \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Battery Capacity - 17.3 kWh \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Fuel Type -     Electric \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Mileage -     230 Km \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Seating Capacity -     4 \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
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
                        MaterialPageRoute(builder: (context) => CheckUpdates()),
                      );
                    },
                    child: Text(
                      'Get Booking details',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
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

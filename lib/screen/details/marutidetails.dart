import 'package:car_rental/screen/checkupdates/checkupdates.dart';
import 'package:flutter/material.dart';

class MarutiPage extends StatefulWidget {
  @override
  _MarutiPageState createState() => _MarutiPageState();
}

class _MarutiPageState extends State<MarutiPage> {
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
                  "Maruti Grand Vitara",
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
                  'Maruti’s flagship SUV packs a slew of features including a nine-inch touchscreen infotainment system, ambient lighting. a digital driver display, panoramic sunroof, quilted leatherette upholstery, and wireless phone charging. Features like ventilated front seats, a premium sound system, and a tyre pressure monitoring system (TPMS) are limited to the strong-hybrid units. On the safety front, the SUV packs up to six airbags, ABS with EBD, an electronic stability programme, hill-descent control, and ISOFIX child seat anchors. \n',
                  style: TextStyle(
                    fontSize: 15.0,
                    height: 2,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Rent -     ₹1,499 / Hour \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Engine -     1490 CC \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Transmission -     Automatic/Manual \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Max Power - 91.18bhp@5500rpm \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Fuel Type -     Petrol/CNG \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Mileage -     27.97 Kmpl \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Seating Capacity -     5 \n',
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

import 'package:car_rental/screen/checkupdates/checkupdates.dart';
import 'package:flutter/material.dart';

class AudiPage extends StatefulWidget {
  @override
  _AudiPageState createState() => _AudiPageState();
}

class _AudiPageState extends State<AudiPage> {
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
                  "Audi - Q5",
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
                  'The Audi Q5 features an updated 10.1-inch MMI infotainment system, Apple CarPlay and Android Auto, a 19-speaker Bang and Olufsen 3D sound system, a digital driver’s display, cruise control, a panoramic sunroof, ambient lighting, a wireless phone charger, and tri-zone climate control. Safety is taken care of by eight airbags, ABS with EBD, a tyre pressure monitor, electronic stability control, hill hold assist, Audi Park assist with self-parking capabilities, and front and rear parking sensors. \n',
                  style: TextStyle(
                    fontSize: 15.0,
                    height: 2,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Rent -     ₹3,499 / Hour \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Engine -     1984 CC \n',
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
                  'Max Power - 245.59bhp@5000-6000rpm \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Fuel Type -     Petrol \n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                Text(
                  'Mileage -     13.47 Kmpl \n',
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

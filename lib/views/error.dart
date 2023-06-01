import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "images/think.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / (2 * 100)),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Shimmer.fromColors(
                  highlightColor: Colors.yellow,
                  baseColor: Colors.blue,
                  child: Text(
                    " Hmmm.... \n there may be some connection isues at the moment. \n Please retry after some time.",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "SourceSansPro",
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

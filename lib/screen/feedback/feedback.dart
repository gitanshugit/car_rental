import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'feedback function.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        flexibleSpace: Container(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "🌟 Feedback 🌟",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "BebasNeue",
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Center(
                  child: Lottie.asset(
                'assets/lottie/feed1.json',
                height: 250,
              )),
            ),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              child: const Text('Click me to give feedback...🌟'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => const FeedbackDialog());
              },
            ),
          ),
        ],
      ),
    );
  }
}

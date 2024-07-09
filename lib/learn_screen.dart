import 'package:flutter/material.dart';

class learnscreen extends StatefulWidget {
  const learnscreen({super.key});

  @override
  State<learnscreen> createState() => _learnscreenState();
}

class _learnscreenState extends State<learnscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding (
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container (
               color: Colors.pink,
                height: 60,
              ),
              Expanded(child: Container(
                color: Colors.blue,
              )),
              Container(
                color: Colors.yellow,
                height: 60,
              )
            ],
          ),
        ),


        )
    );
  }
}

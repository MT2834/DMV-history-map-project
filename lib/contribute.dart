import 'package:flutter/material.dart';

class contribute_screen extends StatefulWidget {
  const contribute_screen({super.key});

  @override
  State<contribute_screen> createState() => _contribute_screenState();
}

class _contribute_screenState extends State<contribute_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('contribute'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text('name of location'),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'name of location', // pass the hint text parameter here
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('description'),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'description', // pass the hint text parameter here
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: null, child: Text('Add photos/video')),
            Container(color: Colors.blueAccent, height: 50, width: 200,),
            ElevatedButton(onPressed: null, child: Text('post'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'AI response.dart';

class contribute_screen extends StatefulWidget {
  const contribute_screen({super.key});

  @override
  State<contribute_screen> createState() => _contribute_screenState();
}

class _contribute_screenState extends State<contribute_screen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllertwo = TextEditingController();
  String _response = '';
  final OpenAI AIservice = OpenAI();

  void getairesponse() async {
    final inputone = _controller.text;
    final inputtwo = _controller.text;
    if (!inputone.isEmpty && !inputtwo.isEmpty) {
      final response = await AIservice.generateResponse(inputone, inputtwo);
      setState(() {
        _response = response;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'name of location',
                      // pass the hint text parameter here
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
                    controller: _controllertwo,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'description',
                      // pass the hint text parameter here
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: null, child: Text('Add photos/video')),
            Container(
              color: Colors.blueAccent,
              height: 50,
              width: 200,
            ),
            ElevatedButton(onPressed: getairesponse, child: Text('post')),
            Text (_response)
          ],
        ),
      ),
    );
  }
}

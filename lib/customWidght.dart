import 'package:flutter/material.dart';

class Customwidght extends StatefulWidget {
  const Customwidght({super.key});

  @override
  State<Customwidght> createState() => _CustomwidghtState();
}

class _CustomwidghtState extends State<Customwidght> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("CustomerWidgth")),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton(onPressed: (){

      }, child: Text("Click")),
    );
  }
}

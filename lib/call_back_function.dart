import 'package:flutter/material.dart';

class call_back extends StatefulWidget {
  const call_back({super.key});

  @override
  State<call_back> createState() => _call_backState();
}

class _call_backState extends State<call_back> {
  callBack(){
    print("Clicked !!!");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("CallBack")),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton(onPressed: (){
        callBack();
      }, child: Text("Click")),

    );
  }
}

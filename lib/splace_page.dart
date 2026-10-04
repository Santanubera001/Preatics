import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preatics/IntroPage.dart';

class SplacePage extends StatefulWidget {
  const SplacePage({super.key});

  @override
  State<SplacePage> createState() => _SplacePageState();
}

class _SplacePageState extends State<SplacePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
          "SplacePage",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 34),
        )),
      ),
    );
  }
}

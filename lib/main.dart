import 'package:flutter/material.dart';
import 'package:preatics/IntroPage.dart';
import 'package:preatics/awesome_icon.dart';
import 'package:preatics/bmi.dart';
import 'package:preatics/maping_list.dart';
import 'package:preatics/range_slider.dart';
import 'package:preatics/splace_page.dart';
import 'package:preatics/stack.dart';
import 'package:preatics/statefulWeigth.dart';
import 'package:preatics/widgets/rounded_btn.dart';
import 'package:preatics/animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Stack(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 70,
              child: RoundedBtn(
                  btnName: "Play",
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                  color: Colors.blue,
                  callBack: () {
                    print("Logged In!!");
                  },
                  textStyle: TextStyle(),
                ),
            ),
           Container(height: 15,),
            Container(
              width: 200,
              height: 70,
              child: RoundedBtn(
                btnName: "Press",
                callBack: () {
                  print("Logged In!!");
                },
                color: Colors.orange  ,
                textStyle:TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

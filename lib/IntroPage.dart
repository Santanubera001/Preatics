import 'package:flutter/material.dart';
import 'package:preatics/main.dart';

import 'awesome_icon.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntropageState();
}

class _IntropageState extends State<IntroPage> {
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("IntroPage")),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: nameController ,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AwesomeIcon(nameController.text.toString())));
                  },
                  child: Text("Next")),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AwesomeIcon extends StatelessWidget {
  var myName;
  AwesomeIcon(this.myName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome ,$myName",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            Icon(
              Icons.play_arrow_sharp,
              size: 60,
              color: Colors.blue,
            ),
            FaIcon(
              FontAwesomeIcons.googlePay,
              color: Colors.deepPurpleAccent,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}

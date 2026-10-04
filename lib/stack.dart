import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StackWeigth"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:
      Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.red,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.indigoAccent,
              ),
              Positioned(
                left: 25,
                top: 25,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),

      //////////////////////////
      //////////////////////////
      // RichText(
      //   text: TextSpan(
      //     style: TextStyle(
      //       color: Colors.blueGrey,
      //       fontSize: 30,
      //     ),
      //     children:[
      //       TextSpan(text: "Santanu"),
      //       TextSpan(text: "WelCome to",
      //           style: TextStyle(color: Colors.yellow,
      //           fontSize: 50,
      //             fontWeight: FontWeight.bold,
      //           )),
      //       TextSpan(
      //         text: "Flluters"
      //       ),
      //       TextSpan(
      //         text: "My Journey",
      //         style: TextStyle(
      //           fontStyle: FontStyle.italic,
      //           fontSize: 25,
      //
      //         )
      //       )
      //     ]
      //   ),
      // )

    );
  }
}

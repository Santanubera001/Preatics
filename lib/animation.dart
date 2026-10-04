import 'package:flutter/material.dart';

class Animation_Screen extends StatefulWidget {
  const Animation_Screen({super.key});

  @override
  State<Animation_Screen> createState() => _AnimationState();
}

class _AnimationState extends State<Animation_Screen> {
  var _width=200.0;
  var _heigth=100.0;
  bool flag=true;
  Color bg=Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _heigth,
              color: bg,
              duration: Duration(seconds: 3),
            ),
            ElevatedButton(onPressed: (){
             setState(() {
               if(flag)
                 {
                   _width=100.0;
                   _heigth=200.0;
                   bg=Colors.green;
                   flag=false;

                 }
               else
                 {
                   _width=200.0;
                   _heigth=100.0;
                   bg=Colors.red;
                   flag=true;
                 }
             });
            }, child:Text("Click"))
          ],
        ),
      ),
    );
  }
}

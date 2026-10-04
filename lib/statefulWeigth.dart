import 'package:flutter/material.dart';

class Statefulweigth extends StatefulWidget {
  const Statefulweigth({super.key});

  @override
  State<Statefulweigth> createState() => _StatefulweigthState();
}

class _StatefulweigthState extends State<Statefulweigth> {
  // var count=0;
  var no2Controller=TextEditingController();
  var no1Controller =TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWeigth"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Count : $count",style: TextStyle(fontSize: 40),),
      //       ElevatedButton(onPressed: (){
      //            setState(() {
      //              count++;
      //              print(count);
      //            });
      //       }, child:Text("IncrementCount") )
      //     ],
      //   ),
      // ),
      Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                      var no1=int.parse(no1Controller.text.toString());
                      var no2 =int.parse(no2Controller.text.toString());
                      var sum=no2+no1;
                      result ="Sum of the $no1 and $no2 is $sum";
                       setState(() {
                       });
                      }, child: Text("ADD")),

                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());
                        var Substrsction=no1-no2;
                        result ="Differences of the $no1 and $no2 is $Substrsction";
                        setState(() {
                        });
                      }, child: Text("SUB")),

                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());
                        var Multipication=no2*no1;
                        result ="Multiplied of the $no1 and $no2 is $Multipication";
                        setState(() {
                        });
                      }, child: Text("MULTI")),

                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());
                        var Division=no1/no2;
                        result ="Last of the $no1 and $no2 is $Division";
                        setState(() {
                        });
                      }, child: Text("DIVISION")),

                    ],
                  ),
                ),
                Padding(padding:EdgeInsets.all(22),
                  child: Text(result,
                    style: TextStyle(fontSize: 25,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

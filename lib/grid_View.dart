import 'package:flutter/material.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    var gridColor=[Colors.blueGrey,
      Colors.indigoAccent,
      Colors.pink,
      Colors.tealAccent,
      Colors.red,
      Colors.brown,
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.deepOrange,
    ];
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("GridView")),
          backgroundColor: Colors.blue,
      ),
      body:
        GridView.builder(
          itemBuilder: (context, index) {
          return Container( color: gridColor[index],);
        },
          itemCount: gridColor.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11
          ),
        )























      // GridView.count(crossAxisCount:2,
      //  children: [
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[0],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[1],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[2],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[3],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[4],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[5],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[6]),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[7],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[8],),
      //    ),
      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Container(color: gridColor[9],),
      //    ),
      //  ],
      // ),

    );
  }
}

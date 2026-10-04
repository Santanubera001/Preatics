import 'package:flutter/material.dart';

class MapingList extends StatefulWidget {
  const MapingList({super.key});

  @override
  State<MapingList> createState() => _MapingListState();
}

class _MapingListState extends State<MapingList> {
  // var arrData=[
  //   "Santanu",
  //   "Avijit",
  //   "Madan",
  //   "Putol",
  //   "Ankita",
  //   "Laxmi",
  //   "Monalisa",
  //   "Tina",
  //   "rupa"
  // ];
  var arrData=[
    {
      'name':"Santanu",
      'PhNo':"7567565675",
      'unread':'1',
    },
    {
      'name':"Avijit",
      'PhNo':"7567565675",
      'unread':'2',
    },
    {
      'name':"Madan",
      'PhNo':"7567565675",
      'unread':'7',
    },
    {
      'name':"Putol",
      'PhNo':"7567565675",
      'unread':'5',
    },
    {
      'name':"Laxmi",
      'PhNo':"7567565675",
      'unread':'3',
    },
    {
      'name':"Monalisa",
      'PhNo':"74567465",
      'unread':'9',
    },
    {
      'name':"Ankita",
      'PhNo':"49545465464",
      'unread':'8',
    },
    {
      'name':"rupa",
      'PhNo':"75675634345",
      'unread':'6',
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MappingList"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value)=>
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value['name'].toString()),
                subtitle: Text(value['PhNo'].toString()),
                trailing:CircleAvatar(child: Text(value['unread'].toString())) ,
              )
          ).toList()
        ),
      ),
    );

  }
}

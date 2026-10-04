import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Time_Date extends StatefulWidget {
  const Time_Date({super.key});

  @override
  State<Time_Date> createState() => _Time_DateState();
}

class _Time_DateState extends State<Time_Date> {
  @override
  Widget build(BuildContext context) {
    // var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(title:Text("Time&Date",),
      backgroundColor: Colors.blue
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(onPressed: () async {
              DateTime? datePicked= await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2011),
                  lastDate:DateTime(2025));
              if(datePicked!=null){
                print('Date Selected :${datePicked.day}-${datePicked.month}-${datePicked.year}');
              }
            }, child: Text("Show")),
            
            ElevatedButton(onPressed: () async {
           TimeOfDay? pickedTime= await showTimePicker(context: context,
                  initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input
              );
           if(pickedTime!=null)
             {
               print("Selected Time : ${pickedTime.hour}:${pickedTime.minute}");
             }
            }, 
                
                child:Text("Select Time"))
          ],
        ),
      )


      // Center(
      //   child: Container(
      //     width:200 ,
      //     height: 200,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('Current Time : ${DateFormat('yMMMMd').format(time)}'),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //           });
      //         },
      //             child: Text("Current Time")
      //         )
      //       ],
      //     ),
      //   ),
      // ),

    );
  }
}

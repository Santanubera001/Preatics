import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var wthController = TextEditingController();
  var fitController = TextEditingController();
  var inchController = TextEditingController();
  var result = "";
  var bgColor = Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI APP")),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        // color: bgColor,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffa18cd1),Color(0xfffbc2eb)
              ],
                  begin: FractionalOffset(1.0,1.0),
                  end: FractionalOffset(0.0, 1.0)
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI ",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: wthController,
                  decoration: InputDecoration(
                      label: Text("Enter the Wight in KG"),
                      prefixIcon: Icon(Icons.line_weight)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: fitController,
                  decoration: InputDecoration(
                      label: Text("Enter the Heigth in fit"),
                      prefixIcon: Icon(Icons.height)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: inchController,
                  decoration: InputDecoration(
                      label: Text("Enter the Heigth in Inch"),
                      prefixIcon: Icon(Icons.height)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: () {
                      var wt = wthController.text;
                      var ft = fitController.text;
                      var inch = inchController.text;
                      if (wt != "" && ft != "" && inch != "") {
                        var iWt = int.parse(wt);
                        var iFit = int.parse(ft);
                        var iInch = int.parse(inch);

                        var totalInch = (iFit * 12) + iInch;
                        var totalCm = totalInch * 2.54;
                        var totalMater = totalCm / 100;

                        var bmi = iWt / (totalMater * totalMater);
                        var msg = "";
                        if (bmi > 25) {
                          msg = "You're OverWeigth";
                          bgColor = Colors.red.shade200;
                        } else if (bmi < 18) {
                          msg = "You are underWeigth";
                          bgColor = Colors.orange.shade200;
                        } else {
                          msg = "You're Healthy";
                          bgColor = Colors.green.shade200;
                        }
                        setState(() {
                          result =
                              "$msg \n Your BMI is : ${bmi.toStringAsFixed(4)}";
                        });
                      } else {
                        setState(() {
                          result = "Please Fill all the Required Blanks";
                        });
                      }
                    },
                    child: Text("Calculate")),
                SizedBox(
                  height: 12,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

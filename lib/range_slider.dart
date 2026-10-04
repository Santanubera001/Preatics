import 'package:flutter/material.dart';

class RangeSliders extends StatefulWidget {
 const RangeSliders({super.key});

  @override
  State<RangeSliders> createState() => _RangeSlidersState();
}

class _RangeSlidersState extends State<RangeSliders> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("RangeSlider"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            onChanged: (newValue) {
              values = newValue;
              setState((){});
            },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RoundedBtn extends StatefulWidget {
  final String btnName;
  final Icon? icon;
  final Color? color;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const RoundedBtn({
    super.key,
    required this.btnName,
    this.icon,
    this.color = Colors.blue,
    this.textStyle,
    this.callBack,
  });

  @override
  State<RoundedBtn> createState() => _RoundedBtnState();
}

class _RoundedBtnState extends State<RoundedBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          widget.callBack!();
        },
        child: widget.icon != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.icon!,
                  Container(
                    width:11 ,
                  ),
                  Text(
                    widget.btnName,
                    style: widget.textStyle,
                  )
                ],
              )
            : Text(
                widget.btnName,
                style: widget.textStyle,
          ),
      style: ElevatedButton.styleFrom(
        // shadowColor:widget.color,
          backgroundColor: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(21)
        )
      )

      ),
        );
  }
}

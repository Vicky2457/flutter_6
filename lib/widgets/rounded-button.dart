import 'package:flutter/material.dart';

class Roundedbutton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  Roundedbutton(
      {required this.btnName,
      this.icon,
      this.bgcolor = Colors.blue,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Container(
                  width: 11,
                ),
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(133, 255, 255, 255),
          shadowColor: bgcolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(21)))),
    );
  }
}

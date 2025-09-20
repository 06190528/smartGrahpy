import 'package:flutter/material.dart';
import 'package:smart_graph_app/common/logic.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  final double buttonWidth;
  final double buttonHeight;
  final double borderRadius;
  final Color borderColor;

  CommonButton(
      {required this.buttonText,
      required this.onPressed,
      required this.buttonWidth,
      required this.buttonHeight,
      this.borderRadius = 10,
      this.borderColor = const Color.fromARGB(255, 0, 0, 0)});

  @override
  Widget build(BuildContext context) {
    final double fontSize =
        Utils.bestFitFontSize(buttonText, buttonWidth, buttonHeight);
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 91, 167, 230),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            side: BorderSide(
              color: borderColor,
            ),
            padding: const EdgeInsets.all(0)),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {Key? key,
      required this.text,
      required this.onPress,
      required this.textColor,
      this.style,
      required this.backGroundColor})
      : super(key: key);

  final String text;
  final Function()? onPress;
  final Color textColor;
  final Color backGroundColor;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: style != null
              ? null
              : ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.grey;
                    } else {
                      return backGroundColor;
                    }
                  },),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(15),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
            foregroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                } else {
                  return Colors.white;
                }
              },
            ),
                ),
          onPressed: onPress,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 18.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

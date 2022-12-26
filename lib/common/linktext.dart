import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  final String text;
  final Function()? onPress;
  final Color color;
  final Function()? style;

  const LinkText(
      {Key? key,
      required this.text,
      required this.color,
      this.style,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style != null
          ? null
          : ButtonStyle(
              padding:
                  MaterialStateProperty.all(const EdgeInsets.only(right: 10.0)),
              foregroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  } else {
                    return Colors.black;
                  }
                },
              ),
            ),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: color,
        ),
      ),
    );
  }
}

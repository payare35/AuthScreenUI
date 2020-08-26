import 'package:beautiful_auth_screen/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function onPressed;

  const RoundedButton(
      {Key key,
      this.text,
      this.color = kPrimaryColor,
      this.textColor = Colors.white,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          color: color,
          onPressed: onPressed,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              color: textColor,
            ),
          )),
    );
  }
}

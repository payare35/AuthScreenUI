import 'package:beautiful_auth_screen/components/text_field_container.dart';
import 'package:beautiful_auth_screen/constants.dart';
import "package:flutter/material.dart";

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              hintText: "Enter Password",
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: kPrimaryColor,
              ))),
    );
  }
}

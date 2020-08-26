import 'package:beautiful_auth_screen/constants.dart';
import 'package:flutter/material.dart';

class AlreadyStatement extends StatelessWidget {
  final bool isLoggedIn;
  final Function onPressed;
  const AlreadyStatement({
    Key key,
    this.isLoggedIn = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLoggedIn ? "Don't have an Account? " : "Already have an Account? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            isLoggedIn ? "Sign Up" : "Sign In",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}

import 'package:beautiful_auth_screen/constants.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Divider(
            height: 1.5,
            color: Color(0xFFD9D9D9),
          )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "OR",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kPrimaryColor),
              )),
          Expanded(
              child: Divider(
            height: 1.5,
            color: Color(0xFFD9D9D9),
          )),
        ],
      ),
    );
  }
}

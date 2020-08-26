import 'package:beautiful_auth_screen/components/already_have_an_acc.dart';
import 'package:beautiful_auth_screen/components/rounded_button.dart';
import 'package:beautiful_auth_screen/components/rounded_password_field.dart';
import 'package:beautiful_auth_screen/components/rounded_textfield.dart';
import 'package:beautiful_auth_screen/components/text_field_container.dart';
import 'package:beautiful_auth_screen/constants.dart';
import 'package:beautiful_auth_screen/screens/login/components/background.dart';
import 'package:beautiful_auth_screen/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            TextFieldContainer(
              child: RoundedTextField(
                hintText: "Your Email",
                icon: Icons.person,
                onChanged: (value) {},
              ),
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              onPressed: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyStatement(
              isLoggedIn: true,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:beautiful_auth_screen/components/already_have_an_acc.dart';
import 'package:beautiful_auth_screen/components/rounded_button.dart';
import 'package:beautiful_auth_screen/components/rounded_password_field.dart';
import 'package:beautiful_auth_screen/components/rounded_textfield.dart';
import 'package:beautiful_auth_screen/components/text_field_container.dart';
import 'package:beautiful_auth_screen/constants.dart';
import 'package:beautiful_auth_screen/screens/login/login_screen.dart';
import 'package:beautiful_auth_screen/screens/sign_up/components/or_divider.dart';
import 'package:beautiful_auth_screen/screens/sign_up/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SignUP".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            TextFieldContainer(
              child: RoundedTextField(
                  hintText: "Enter your Email",
                  icon: Icons.person,
                  onChanged: (value) {}),
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              onPressed: () {},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            AlreadyStatement(
              isLoggedIn: false,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  imageSrc: "assets/icons/facebook.svg",
                  onPressed: () {},
                ),
                SocialIcon(
                  imageSrc: "assets/icons/twitter.svg",
                  onPressed: () {},
                ),
                SocialIcon(
                  imageSrc: "assets/icons/google-plus.svg",
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// 2000037584

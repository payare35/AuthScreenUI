import 'package:beautiful_auth_screen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key key,
    @required this.imageSrc,
    @required this.onPressed,
  }) : super(key: key);
  final String imageSrc;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: kPrimaryLightColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          imageSrc,
          height: 20.0,
          width: 20.0,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}

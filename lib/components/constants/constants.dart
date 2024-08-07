import 'package:flutter/material.dart';

//colors
const kHeadingTextColor = Color(0xFFFFD073);
const kPrimaryColor = Color.fromRGBO(58, 66, 86, 1.0);

const kPrimaryColor2 = Color(0xFF3E4067);
const kTextColor = Color(0xFF3F4168);
const kIconColor = Color(0xFF5E5E5E);

// Colors
// const kBackgroundColor = Color(0xFFFEFEFE);
const kBackgroundColor = Color(0xFFF5F5F5);
const kTitleTextColor = Color(0xFF303030);
const kBodyTextColor = Color(0xFF4B4B4B);
const kTextLightColor = Color(0xFF959595);
const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecovercolor = Color(0xFF36C12C);
// const kPrimaryColor = Color(0xFF3382CC);
final kShadowColor = const Color(0xFFB7B7B7).withOpacity(.16);
final kActiveShadowColor = const Color(0xFF4056C6).withOpacity(.15);

// Text Style
// const kHeadingTextStyle = TextStyle(
//   fontSize: 22,
//   fontWeight: FontWeight.w600,
// );

const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);

const kTitleTextstyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);

// const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6EBAFA);
// const kHeadColor = Color(0xFFFFD073);
const kGrennColor = Color(0xFF49CC96);

const kBagroundColor = Color.fromRGBO(231, 228, 236, 1.0);

const kActionBtnColor = Color(0xFF33691E);

const kDefaultPadding = 20.0;

//Text Styles
const kHeadingTextStyle = TextStyle(
  //fontSize: 35,
  // color: kHeadingTextColor,
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
);
const kHeadingDetailTextStyle = TextStyle(
  // fontSize: 25,
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
);

final kDefaultShadow = BoxShadow(
  offset: const Offset(5, 5),
  blurRadius: 10,
  color: const Color(0xFFE9E9E9).withOpacity(0.56),
);

const kAnimatedDuration = Duration(milliseconds: 200);
const appVerticalGap = SizedBox(height: 20);
const appHorizontalGap = SizedBox(width: 20);

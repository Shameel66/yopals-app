import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextStyles {

  static TextStyle hintNormalTextStyle = const TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
  );

  static TextStyle darkGreyNormalTextStyle = TextStyle(
    color: Colors.grey.shade600,
    fontSize: 14.0,
    fontWeight: FontWeight.w400
  );

  static TextStyle veryDarkGreyNormalTextStyle = TextStyle(
      color: Colors.grey.shade800,
      fontSize: 14.0,
      fontWeight: FontWeight.w400
  );

  static TextStyle black12PtTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.w600
  );

  static TextStyle blackNormalTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 14.0,
  );

  static TextStyle black14PtHeavyWeightTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 14.0,
    fontWeight: FontWeight.w700
  );

  static TextStyle black16PtHeavyWeightTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w700
  );

  static TextStyle black16PtTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w400
  );

  static TextStyle blackBigHeadingTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 25.0,
      fontWeight: FontWeight.bold
  );

  static TextStyle blackMediumHeadingTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold
  );

  static TextStyle redBigWeight16PtTextStyle = const TextStyle(
    color: Color(0xffFD2225),
    fontSize: 16.0,
    fontWeight: FontWeight.w700
  );

  static TextStyle redLessWeight14PtTextStyle = const TextStyle(
      color: Color(0xffFD2225),
      fontSize: 14.0,
      fontWeight: FontWeight.w500
  );

  static TextStyle redBigWeight18PtTextStyle = const TextStyle(
      color: Color(0xffFD2225),
      fontSize: 18.0,
      fontWeight: FontWeight.w500
  );

  static TextStyle red12PtTextStyle = const TextStyle(
      color: Color(0xffFD2225),
      fontSize: 12.0,
      fontWeight: FontWeight.w500
  );

  static TextStyle whiteBigWeightTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w800
  );

  static TextStyle whiteBigHeadingTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      height: 1.3,
      fontWeight: FontWeight.bold
  );

  static TextStyle white18PtMediumWeightTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w700
  );

  static TextStyle white14PtHeavyWeightTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.w700
  );

  static TextStyle blue16PtHeavyWeightTextStyle = const TextStyle(
      color: Color(0xff0e7fe1),
      fontSize: 16.0,
      fontWeight: FontWeight.bold
  );

  static TextStyle profileStatusText = const TextStyle(
      color: Colors.grey,
      fontSize: 16.0,
  );

}

class AppColors {
  static Color mainColor = Color(0xffFD2225);

  static const MaterialColor primaryColor = const MaterialColor(
    0xffFD2225,
    const <int, Color>{
      50: const Color(0xffFD2225),
      100: const Color(0xffFD2225),
      200: const Color(0xffFD2225),
      300: const Color(0xffFD2225),
      400: const Color(0xffFD2225),
      500: const Color(0xffFD2225),
      600: const Color(0xffFD2225),
      700: const Color(0xffFD2225),
      800: const Color(0xffFD2225),
      900: const Color(0xffFD2225),
    },
  );
}

class GetTransition {
  static Transition pageTransition = Transition.rightToLeft;
}
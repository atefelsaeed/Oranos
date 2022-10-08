import 'package:flutter/material.dart';

class Navigation {
  static void navigateAndPop(context) => Navigator.pop(context);

  static void navigateTo(context, widget) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );

  static void navigateAndFinish(context, widget) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
        (Route<dynamic> route) => false,
      );

  static navigateWithName(context, String routeName) =>
      Navigator.pushNamed(context, routeName);

  static navigateWithNameAndFinish(context, String routeName) =>
      Navigator.pushReplacementNamed(context, routeName);
}

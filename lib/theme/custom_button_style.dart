import 'package:flutter/material.dart';
import '../core/app_export.dart';

//class
class CustomButtonStyle {
  //filled button style
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  //outline button style
  static ButtonStyle get ourlineBlueGray => outlinedButton.styleFrom(
        backgroundColor: appTheme.gray900,
        side: BorderSide(
          color: appTheme.blueGray80001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
        padding: EdgeInsets.zero,
      );
  //text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: WidgetStateProperty.all<color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(0),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      side: WidgetStateProperty.all<BorderSide>(
        BorderSide(color: Colors.transparent),
      ));
}

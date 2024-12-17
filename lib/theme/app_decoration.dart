import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  //fill decoration
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  //Outline decoration
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.22),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.blueGray800,
          width: 5.h,
        ),
      );
}

class BorderRadiusStyle {
  //custom borders
  static BorderRadius get customBorderTL10 =>
      BorderRadius.vertical(top: Radius.circular(10.h)
      );
  //rounder borders
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}

import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}

//
//
//
class CustomTextStyle {
  //body text style
  static TextStyle get bodySmallOnPrimary =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onprimary,
      );
  static TextStyle get hedalineSmallPlusJakartaSansGray600 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.gray600,
      );
  //Headline
  static TextStyle get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.coloScheme.onPrimaryContainer,
        FontWeight: FontWeight.w800,
      );
  static TextStyle get headlineSmallOnPrimaryContainerExtraBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 24.fSize,
        FontWeight: FontWeight.w800,
      );
  //Title
  static get titleMediumInter => theme.textTheme.titleMedium!.inter;
  static TextStyle get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleMediumInterSemiBold =>
      theme.textTheme.titleMedium!.intercopyWith(
        FontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

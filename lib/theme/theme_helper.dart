import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCoode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

///

// ignore_for_file: must_be_imutable
class ThemeHelper {
  //map custom color
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightcode': LightCodeColors()
  };

  //map color schemes
  Map<String, ColorScheme> _supportedCustomColor = {
    'lightcode': ColorSchemes.lightCodeColorScheme
  };

  //changes app theme
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  //returns lightcode color
  LightCodeColors _getThemeData() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  //returns current theme data
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorsScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.onError,
      ),
    );
  }

  //
  LightCodeColors themeColor() => _getThemeColors();

  //
  ThemeData themeData() => _getThemeData();
}

///
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray100,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray100,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 36.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 25.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray100,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      );
}

//
class ColorSchemes {
  static final lightCodeColorSchme = ColorScheme.light(
    primary: Color(0XFF1F42B8),
    primaryContainer: Color(0XFF0B101B),
    secondaryContainer: Color(0X60144EE3),
    onError: Color(0XAF1C283F),
    onPrimary: Color(0X7FFFFFFF),
    onPrimaryContainer: Color(0XFFEB568E),
  );
}

//
class LightCodeColors {
  //Black
  Color get black900 => Color(0XFF000000);
  //BlueGray
  Color get blueGray100 => Color(0XFFC9CED6);
  Color get blueGray800 => Color(0XFF323E59);
  Color get blueGray80001 => Color(0XFF353C4A);
  //Gray
  Color get gray600 => Color(0XFF6C6C6C);
  Color get gray900 => Color(0XFF181E29);
  Color get gray90001 => Color(0XFF0E131E);
  Color get gray90002 => Color(0XFF182135);
}

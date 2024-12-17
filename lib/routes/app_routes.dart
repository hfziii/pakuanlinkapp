import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/splashscreen_screen/splashscreen_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';

//
class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homeScreen = '/home_screen';

  static const String homeInitialPage = '/home_initial_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    // splashscreenScreen: (context) => SplashscreenScreen(),
    // loginScreen: (context) => LoginScreen(),
    // registerScreen: (context) => RegisterScreen(),
    homeScreen: (context) =>  HomeScreen(),
    // dashboardScreen: (context) => DashboardScreen(),
    // profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    // initialRoute: (context) => SplashscreenScreen()
  };
}

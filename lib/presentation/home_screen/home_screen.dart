import 'package:flutter/material.dart';
import 'package:pakuanlinkapp/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:pakuanlinkapp/presentation/profile_screen/profile_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'home_initial_page.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          initialRoute: AppRoutes.homeInitialPage,
          onGenerateRoute: (routeSetting) => MaterialPageRoute(
            builder: (context) => getCurrentPage(routeSetting.name!),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  //Tombol Navigasi
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          context,
          getCurrentRoute(type),
        );
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Dashboard:
        return AppRoutes.dashboardScreen;
      case BottomBarEnum.User:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeInitialPage:
        return HomeInitialPage();
      case AppRoutes.dashboardScreen:
        return DashboardScreen();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}

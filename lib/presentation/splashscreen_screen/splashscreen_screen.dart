import 'package:flutter/material.dart';
import 'package:pakuanlinkapp/presentation/login_screen/login_screen.dart';
import 'package:pakuanlinkapp/presentation/register_screen/register_screen.dart';
import 'package:pakuanlinkapp/theme/custom_button_style.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_image_view.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView( // Tambahkan ScrollView
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPakuanlinkSection(context),
                SizedBox(height: 78.h),
                _buildLoginSection(context),
                SizedBox(height: 42.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //section widget
  Widget _buildPakuanlinkSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Stack(
        children: [
          // CustomImageView untuk imgCubes
          CustomImageView(
            imagePath: ImageConstant.imgCubes,
            height: 400.h,
            width: double.maxFinite,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 76.h),
          ),
          // Teks PakuanLink
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: MediaQuery.of(context).size.height * 0.2, // Dinamis
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Column(
                    children: [
                      Text(
                        "PakuanLink",
                        style: theme.textTheme.displaySmall,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 46.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //section widget
  Widget _buildLoginSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 6.h),
            child: Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    height: 40.h,
                    text: "Login".toUpperCase(),
                    buttonStyle: CustomButtonStyle.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleMediumInter,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(width: 6.h),
                Expanded(
                  child: CustomOutlinedButton(
                    text: "Daftar".toUpperCase(),
                    buttonTextStyle: CustomTextStyles.titleMediumInterPrimary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

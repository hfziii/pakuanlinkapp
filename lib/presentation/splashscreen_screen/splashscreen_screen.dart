import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pakuanlinkapp/theme/custom_button_style.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPakuanlinkSection(context),
              SizedBox(height: 32.h),
              _buildLoginSection(context),
              SizedBox(height: 42.h)
            ],
          ),
        ),
      ),
    );
  }

  //section widget
  Widget _buildPakuanlinkSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 138.h,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgCubes,
          ),
          fit: BoxFit.fill,
        ),
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
          SizedBox(height: 46.h)
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
                  ),
                ),
                SizedBox(width: 6.h),
                Expanded(
                  child: CustomOutlinedButton(
                    text: "Daftar".toUpperCase(),
                    buttonTextStyle: CustomTextStyles.titleMediumInterPrimary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

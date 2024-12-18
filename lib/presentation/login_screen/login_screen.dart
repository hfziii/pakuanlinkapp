import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pakuanlinkapp/presentation/home_screen/home_screen.dart';
import 'package:pakuanlinkapp/presentation/register_screen/register_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_filed.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // Controller untuk input
  final TextEditingController userNameInputController = TextEditingController();
  final TextEditingController passwordtwoInputController = TextEditingController();

  // Key untuk validasi form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Stack(
          children: [
            // Background image
            CustomImageView(
              imagePath: ImageConstant.imgCubes,
              height: 370.h,
              width: double.maxFinite,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 76.h),
            ),
            // Form and content
            Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Column(
                          children: [
                            Text(
                              "LOGIN",
                              style: theme.textTheme.headlineLarge,
                            ),
                            SizedBox(height: 44.h),
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(right: 8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Username",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  SizedBox(height: 10.h),
                                  CustomTextFormField(
                                    controller: userNameInputController,
                                    contentPadding: EdgeInsets.all(12.h),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(right: 8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Password",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  SizedBox(height: 10.h),
                                  CustomTextFormField(
                                    controller: passwordtwoInputController,
                                    hintText: "************************",
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.visiblePassword,
                                    suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 14.h, 10.h, 14.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgEye,
                                        height: 12.h,
                                        width: 12.h,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxHeight: 44.h,
                                    ),
                                    obscureText: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.h,
                                      vertical: 12.h,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 34.h),
                            CustomElevatedButton(
                              text: "LOGIN".toUpperCase(),
                              margin: EdgeInsets.only(right: 8.h),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                );
                              },
                            ),
                            SizedBox(height: 32.h),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 50.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Belum Punya Akun?",
                                        style: CustomTextStyles.bodySmallOnPrimary,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "Daftar disini",
                                        style: theme.textTheme.bodySmall!.copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => RegisterScreen()),
                                            );
                                          },
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  //
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.h,
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(left: 21.h),
        onTap: () {
          Navigator.pop(context); // Kembali ke halaman sebelumnya
        },
      ),
    );
  }
}
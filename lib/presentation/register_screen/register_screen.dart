import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pakuanlinkapp/presentation/login_screen/login_screen.dart';
import 'package:pakuanlinkapp/presentation/splashscreen_screen/splashscreen_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_filed.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameInputController = TextEditingController();
  TextEditingController usernameInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController confirmPasswordInputController =
      TextEditingController();

  // Changed to a unique name for this screen
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Form(
          key: registerFormKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                height: 756.h,
                padding: EdgeInsets.only(top: 78.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCubes,
                      height: 370.h,
                      width: double.maxFinite,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 76.h),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        right: 16.h,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "DAFTAR",
                            style: theme.textTheme.headlineLarge,
                          ),
                          SizedBox(height: 50.h),
                          _buildFullNameSection(context),
                          SizedBox(height: 10.h),
                          _buildUsernameSection(context),
                          SizedBox(height: 10.h),
                          _buildPasswordSection(context),
                          SizedBox(height: 10.h),
                          _buildConfirmPasswordSection(context),
                          SizedBox(height: 50.h),
                          _buildRegisterButton(context),
                          SizedBox(height: 4.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Sudah Punya Akun?",
                                  style: CustomTextStyles.bodySmallOnPrimary,
                                ),
                                TextSpan(
                                  text: "Login disini",
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => LoginScreen()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //appbar
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
  

  //full name
  Widget _buildFullNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  //full name
  Widget _buildFullNameSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nama Lengkap",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 10.h),
          _buildFullNameInput(context)
        ],
      ),
    );
  }

  //username
  Widget _buildUsernameInput(BuildContext context) {
    return CustomTextFormField(
      controller: usernameInputController,
      contentPadding: EdgeInsets.all(12.h),
    );
  }

  //username
  Widget _buildUsernameSection(BuildContext context) {
    return Container(
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
          _buildUsernameInput(context)
        ],
      ),
    );
  }

  //password
  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: passwordInputController,
      hintText: "************************",
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
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
    );
  }

  //password
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
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
          _buildPasswordInput(context)
        ],
      ),
    );
  }

  //confirm password
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordInputController,
      hintText: "************************",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
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
    );
  }

  //confirm password
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Konfirmasi Password",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 10.h),
          _buildPasswordInput(context)
        ],
      ),
    );
  }

  //button daftar
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      text: "DAFTAR".toUpperCase(),
      margin: EdgeInsets.only(right: 8.h),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SplashscreenScreen()),
        );
      },
    );
  }

  //navigate back
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
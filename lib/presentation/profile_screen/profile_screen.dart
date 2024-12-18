import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_from_filed.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  // Creating unique keys to avoid conflicts with others
  TextEditingController fullNameInputController = TextEditingController();
  TextEditingController userNameInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController linkcountInputController = TextEditingController();

  // Unique GlobalKey names
  // GlobalKey<NavigatorState> profileNavigatorKey = GlobalKey();
  GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Form(
          key: profileFormKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUserbig,
                            height: 114.h,
                            width: 116.h,
                          ),
                          SizedBox(height: 12.h),
                          _buildUserInfoSection(context),
                          SizedBox(height: 44.h),
                          _buildLogoutButton(context)
                        ],
                      ),
                    ),
                    SizedBox(height: 60.h),
                    SizedBox(
                      height: 114.h,
                      width: 392.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  //title
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Profile",
      ),
    );
  }

  //name
  Widget _buildFullNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameInputController,
      hintText: "Muhamad Hafizi",
      hintStyle: theme.textTheme.headlineSmall!,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 16.h, 12.h, 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 38.h,
      ),
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.underLineOnPrimary,
    );
  }

  //usename
  Widget _buildUsernameInput(BuildContext context) {
    return CustomTextFormField(
      controller: userNameInputController,
      hintText: "mhfzyyy",
      hintStyle: theme.textTheme.headlineSmall!,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 16.h, 12.h, 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 36.h,
      ),
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.underLineOnPrimary,
    );
  }

  //password
  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: passwordInputController,
      hintText: "**********",
      hintStyle: theme.textTheme.headlineSmall!,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.h,
          bottom: 8.h,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 42.h,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.only(
        left: 12.h,
        top: 4.h,
        bottom: 4.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.underLineOnPrimary,
    );
  }

  //count
  Widget _buildLinkCountInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: CustomTextFormField(
        controller: linkcountInputController,
        hintText: "28",
        hintStyle: theme.textTheme.headlineSmall!,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 2.h),
        borderDecoration: TextFormFieldStyleHelper.underLineOnPrimary,
      ),
    );
  }

  //section
  Widget _buildUserInfoSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 36.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder50,
        border: Border.all(
          color: appTheme.blueGray800,
          width: 5.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nama Lengkap",
            style: theme.textTheme.bodyLarge,
          ),
          _buildFullNameInput(context),
          SizedBox(height: 10.h),
          Text(
            "Username",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.h),
          _buildUsernameInput(context),
          SizedBox(height: 10.h),
          Text(
            "Password",
            style: theme.textTheme.bodyLarge,
          ),
          _buildPasswordInput(context),
          SizedBox(height: 10.h),
          Text(
            "Jumlah Tautan",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 2.h),
          _buildLinkCountInput(context),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }

  //button logout
  Widget _buildLogoutButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 44.h,
      width: 134.h,
      text: "Logout",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLogout,
          height: 22.h,
          width: 20.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyle.ourlineBlueGray,
      buttonTextStyle: CustomTextStyles.titleMediumInterSemiBold,
    );
  }

  //
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              profileFormKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  //
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Dashboard:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }
}

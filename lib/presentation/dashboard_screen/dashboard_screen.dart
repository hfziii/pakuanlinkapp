import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_filed.dart';

// ignore_for_file: must_be_immutable
class DahboardScreen extends StatelessWidget {
  DahboardScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController abtnsecondaryController = TextEditingController();

  TextEditingController abtnsecondary1Controller = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 166.h),
                    _buildAddLinkSection(context),
                    SizedBox(height: 198.h),
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
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  //
   PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "PakuanLink",
        margin: EdgeInsets.only(left: 28.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          height: 44.h,
          width: 44.h,
          margin: EdgeInsets.only(right: 28.h),
        )
      ],
    );
  }

  //
  Widget _buildAddLinkSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 16.h,
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Column(
              children: [
                Text(
                  "Tambahkan Link",
                  style: CustomTextStyles.headlineSmallOnPrimaryContainer,
                ),
                SizedBox(height: 44.h),
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: CustomTextFormField(
                    controller: abtnsecondaryController,
                    hintText: "Nama Link",
                    hintStyle: theme.textTheme.bodyLarge!,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(24.h, 14.h, 18.h, 14.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgAddtitle,
                        height: 22.h,
                        width: 24.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 54.h,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(24.h, 14.h, 18.h, 14.h),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
                    filled: true,
                    fillColor: appTheme.gray900,
                  ),
                ),
                SizedBox(height: 22.h),
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: CustomTextFormField(
                    controller: abtnsecondary1Controller,
                    hintText: "Masukan Link",
                    hintStyle: theme.textTheme.bodyLarge!,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(24.h, 14.h, 18.h, 14.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLink,
                        height: 22.h,
                        width: 24.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 54.h,
                    ),
                    obscureText: true,
                    contentPadding: EdgeInsets.fromLTRB(24.h, 14.h, 18.h, 14.h),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
                    filled: true,
                    fillColor: appTheme.gray900,
                  ),
                ),
                SizedBox(height: 46.h),
                CustomElevatedButton(
                  text: "Simpan".toUpperCase(),
                  margin: EdgeInsets.only(
                    left: 70.h,
                    right: 76.h,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
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

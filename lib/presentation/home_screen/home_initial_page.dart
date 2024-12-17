import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/expandablelist_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key}) : super(key: key);

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

// ignore_for_file: must_be_immutable
class HomeInitialPageState extends State<HomeInitialPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 733.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: buildAppBar(context),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          _buildSearchSection(context),
                          SizedBox(height: 34.h),
                          SizedBox(
                            height: 678.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.symmetric(horizontal: 8.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildLinkList(context),
                                        SizedBox(height: 2.h),
                                        _buildLinkRow(context),
                                        SizedBox(height: 2.h),
                                        _buildExpandableList(context),
                                        SizedBox(height: 2.h),
                                        _buildJobFairRow(context),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 114.h,
                                  width: 392.h,
                                ),
                              ],
                            ),
                          ),
                          _buildFloatingActionButton(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "PakuanLink",
        margin: EdgeInsets.only(left: 28.h),
      ),
      actions: [
        Container(
          height: 30.h,
          width: 30.h,
          margin: EdgeInsets.only(right: 34.h),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 30.h,
                width: 30.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 22.h,
                width: 22.h,
                margin: EdgeInsets.only(left: 4.h, right: 5.h),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h, right: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Cari Link",
              contentPadding: EdgeInsets.fromLTRB(24.h, 14.h, 18.h, 14.h),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLinkList(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 24.h, top: 24.h, bottom: 24.h),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.customBorderTL10,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(8.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Daftar Link",
            style: CustomTextStyles.titleSmallBold,
          ),
        ],
      ),
    );
  }

  Widget _buildLinkRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 24.h),
      decoration: BoxDecoration(
        color: appTheme.gray900.withOpacity(0.22),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(8.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kuesioner",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "https://bit.ly/MonevUnpak-Mahasiswa",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: CustomIconButton(
                        height: 34.h,
                        width: 34.h,
                        decoration: IconButtonStyleHelper.none,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCopy,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: CustomIconButton(
                        height: 34.h,
                        width: 34.h,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.none,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableList(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return ExpandablelistItemWidget();
        },
      ),
    );
  }

  Widget _buildJobFairRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.h),
      decoration: BoxDecoration(
        color: appTheme.gray900.withOpacity(0.22),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(8.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 6.h),
                      child: Text(
                        "Job Fair",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDown,
                    height: 34.h,
                    width: 36.h,
                    margin: EdgeInsets.only(right: 26.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 34,
      width: 34,
      backgroundColor: theme.colorScheme.onError,
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgUp,
        height: 17.0.h,
        width: 17.0.h,
      ),
    );
  }

  void onTapTxtHttpsbitlyone(BuildContext context) {}
}


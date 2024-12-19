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
 
  // Data untuk widget ExpandableList
  final List<Map<String, String>> linkData = [
    {"title": "Webinar", "link": "https://s.id/MUGP0"},
    {"title": "Kuesioner Monev Unpak", "link": "https://bit.ly/MonevUnpak-Mahasiswa"},
    {"title": " Coding Camp by DBS", "link": "http://go.dbs.com/dbsfcodingcamp"},
    {"title": "Panduan Aplikasi Unpak", "link": "https://drive.google.com/drive/folders/1pjKrIeeP9vikCciXFvfX2oFTPp78xI2b"},
    {"title": "Video Pembelajaran Local Storage", "link": "https://drive.google.com/drive/folders/1kDTEiFB0lLNb9braos5qc22YgLcrMB20?usp=sharing"},
  ];
  
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
                                        _buildExpandableList(context),
                                        SizedBox(height: 2.h),
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
                          // _buildFloatingActionButton(context),
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
            color: appTheme.black900.withOpacity(0.8),
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

  Widget _buildExpandableList(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: linkData.length,
        itemBuilder: (context, index) {
          final item = linkData[index];
          return ExpandablelistItemWidget(
            title: item["title"]!,
            link: item["link"]!,
          );
        },
      ),
    );
  }

  void onTapTxtHttpsbitlyone(BuildContext context) {}
}


import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

class ExpandablelistItemWidget extends StatelessWidget {
  const ExpandablelistItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          decoration: BoxDecoration(
            color: appTheme.gray900.withOpacity(0.22),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.8),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 8.h),
                  child: Text(
                    "Webinar",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 34.h,
                width: 34.h,
                decoration: IconButtonStyleHelper.none,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCopy,
                ),
              ),
              CustomIconButton(
                height: 34.h,
                width: 34.h,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.none,
                child: CustomImageView(
                  imagePath: ImageConstant.imgDown,
                ),
              ),
            ],
          ),
        ),
        // trailing: Padding(
        //   padding: EdgeInsets.only(left: 8.h),
        //   // child: CustomIconButton(
        //   //   height: 34.h,
        //   //   width: 34.h,
        //   //   padding: EdgeInsets.all(6.h),
        //   //   decoration: IconButtonStyleHelper.none,
        //   //   child: CustomImageView(
        //   //     imagePath: ImageConstant.imgDown,
        //   //   ),
        //   // ),
        // ),
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            child: Text(
              'https://s.id/MUGP0',
            ),
          ),
        ],
        onExpansionChanged: (value) {},
      ),
    );
  }
}

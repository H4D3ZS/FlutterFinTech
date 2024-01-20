import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_search_view.dart';

class HelpCenterOneScreen extends StatelessWidget {
  HelpCenterOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 27.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Search anything here",
                contentPadding: EdgeInsets.only(
                  top: 13.v,
                  right: 30.h,
                  bottom: 13.v,
                ),
              ),
              SizedBox(height: 32.v),
              _buildAllMenu(context),
              SizedBox(height: 22.v),
              _buildTitleAndAction(context),
              SizedBox(height: 16.v),
              Opacity(
                opacity: 0.16,
                child: Divider(
                  color: appTheme.gray900.withOpacity(0.41),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46Onprimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Help Center",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2Onprimarycontainer,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAllMenu(BuildContext context) {
    return SizedBox();
  }

  /// Section Widget
  Widget _buildTitleAndAction(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "How Premium Member",
          style: CustomTextStyles.titleMediumGray700,
        ),
        CustomImageView(
          imagePath: ImageConstant.img46Gray700,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 2.v),
        ),
      ],
    );
  }
}

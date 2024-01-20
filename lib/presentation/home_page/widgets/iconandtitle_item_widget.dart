import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class IconandtitleItemWidget extends StatelessWidget {
  const IconandtitleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.deepPurple5001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder24,
              ),
              child: Container(
                height: 46.adaptSize,
                width: 46.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillDeepPurple.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup13,
                      height: 21.v,
                      width: 24.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowUp,
                              height: 7.v,
                              width: 17.h,
                              radius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                            SizedBox(
                              height: 14.v,
                              width: 11.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUnion,
                                    height: 14.v,
                                    width: 11.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "",
                                      style: CustomTextStyles.poppinsGray5001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseOrange200,
                      height: 13.v,
                      width: 24.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowUpOrange20001,
                      height: 9.v,
                      width: 24.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              "Send",
              style: CustomTextStyles.bodyMediumPrimary,
            ),
          ],
        ),
      ),
    );
  }
}

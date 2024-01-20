import '../statistic_card_page/widgets/paymentcard1_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_drop_down.dart';
import 'package:hades/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class StatisticCardPage extends StatelessWidget {
  StatisticCardPage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController priceController2 = TextEditingController();

  TextEditingController priceController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            children: [
              _buildPaymentCard(context),
              SizedBox(height: 20.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 2,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 16,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.gray10002,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildTotalBalance(context),
              SizedBox(height: 24.v),
              _buildChart(context),
              SizedBox(height: 23.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 6.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "Income",
                      style: CustomTextStyles.bodySmallOnPrimaryContainer,
                    ),
                  ),
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 5.v,
                      bottom: 6.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Expenses",
                      style: CustomTextStyles.bodySmallOnPrimaryContainer,
                    ),
                  ),
                ],
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
      height: 43.v,
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "Statistic Card",
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 200.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return Paymentcard1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalBalance(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Total Balance",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "2885.00",
                style: CustomTextStyles.titleLargePoppinsOnPrimaryContainer,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: CustomDropDown(
              width: 78.h,
              hintText: "Week",
              items: dropdownItemList,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
      controller: priceController,
      hintText: "40",
      borderDecoration: TextFormFieldStyleHelper.underLineGray1,
    );
  }

  /// Section Widget
  Widget _buildPrice1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 41.v),
      child: CustomTextFormField(
        width: 295.h,
        controller: priceController1,
        hintText: "20",
        alignment: Alignment.topCenter,
        borderDecoration: TextFormFieldStyleHelper.underLineGray1,
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.v),
      child: CustomTextFormField(
        width: 295.h,
        controller: priceController2,
        hintText: "30",
        alignment: Alignment.topCenter,
        borderDecoration: TextFormFieldStyleHelper.underLineGray1,
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 13.v),
      child: CustomTextFormField(
        width: 295.h,
        controller: priceController3,
        hintText: "10",
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter,
        borderDecoration: TextFormFieldStyleHelper.underLineGray1,
      ),
    );
  }

  /// Section Widget
  Widget _buildChart(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray10002,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 236.v,
        width: 327.h,
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineGray10002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 200.v,
                width: 295.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: SizedBox(
                          height: 200.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.gray10002,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildPrice(context),
                          SizedBox(height: 11.v),
                          SizedBox(
                            height: 116.v,
                            width: 295.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                _buildPrice1(context),
                                _buildPrice2(context),
                                _buildPrice3(context),
                                CustomImageView(
                                  imagePath: ImageConstant.imgChart,
                                  height: 116.v,
                                  width: 260.h,
                                  alignment: Alignment.centerRight,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "0",
                            style: CustomTextStyles.bodySmallGray500,
                          ),
                          SizedBox(height: 7.v),
                          Divider(
                            color: appTheme.gray10002,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Mon",
                    style: CustomTextStyles.bodySmallGray500,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Tue",
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Wed",
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Thu",
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Fri",
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Sat",
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Sun",
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

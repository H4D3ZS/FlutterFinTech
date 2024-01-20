import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_title.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_search_view.dart';

class HelpCenterScreen extends StatelessWidget {
  HelpCenterScreen({Key? key})
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
            horizontal: 29.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Search",
              ),
              SizedBox(height: 39.v),
              _buildSixtyNine(context),
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
      height: 66.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "Help Center",
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return SizedBox();
  }
}

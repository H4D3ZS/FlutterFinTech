import '../your_saving_page/widgets/transactioncomponent1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore_for_file: must_be_immutable
class YourSavingPage extends StatefulWidget {
  const YourSavingPage({Key? key})
      : super(
          key: key,
        );

  @override
  YourSavingPageState createState() => YourSavingPageState();
}

class YourSavingPageState extends State<YourSavingPage>
    with AutomaticKeepAliveClientMixin<YourSavingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildTransactionComponent(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionComponent(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return Transactioncomponent1ItemWidget();
          },
        ),
      ),
    );
  }
}

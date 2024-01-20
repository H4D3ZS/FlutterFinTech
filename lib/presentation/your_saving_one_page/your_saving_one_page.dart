import '../your_saving_one_page/widgets/transactioncomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore_for_file: must_be_immutable
class YourSavingOnePage extends StatefulWidget {
  const YourSavingOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  YourSavingOnePageState createState() => YourSavingOnePageState();
}

class YourSavingOnePageState extends State<YourSavingOnePage>
    with AutomaticKeepAliveClientMixin<YourSavingOnePage> {
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return TransactioncomponentItemWidget();
        },
      ),
    );
  }
}

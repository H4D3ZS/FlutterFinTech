import '../request_history_page/widgets/transactioncomponent4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class RequestHistoryPage extends StatefulWidget {
  const RequestHistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  RequestHistoryPageState createState() => RequestHistoryPageState();
}

class RequestHistoryPageState extends State<RequestHistoryPage>
    with AutomaticKeepAliveClientMixin<RequestHistoryPage> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildTransaction(context),
                    SizedBox(height: 24.v),
                    _buildTransactionComponent(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransaction(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 7.v,
          ),
          child: Text(
            "Transaction",
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ),
        CustomDropDown(
          width: 78.h,
          hintText: "Week",
          items: dropdownItemList,
          onChanged: (value) {},
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTransactionComponent(BuildContext context) {
    return ListView.separated(
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
      itemCount: 5,
      itemBuilder: (context, index) {
        return Transactioncomponent4ItemWidget();
      },
    );
  }
}

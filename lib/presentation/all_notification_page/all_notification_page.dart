import '../all_notification_page/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AllNotificationPage extends StatefulWidget {
  const AllNotificationPage({Key? key})
      : super(
          key: key,
        );

  @override
  AllNotificationPageState createState() => AllNotificationPageState();
}

class AllNotificationPageState extends State<AllNotificationPage>
    with AutomaticKeepAliveClientMixin<AllNotificationPage> {
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
              _buildNotification(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
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
          itemCount: 6,
          itemBuilder: (context, index) {
            return NotificationItemWidget();
          },
        ),
      ),
    );
  }
}

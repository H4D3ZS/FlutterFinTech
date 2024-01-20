import '../unread_notification_page/widgets/notificationreceived_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UnreadNotificationPage extends StatefulWidget {
  const UnreadNotificationPage({Key? key})
      : super(
          key: key,
        );

  @override
  UnreadNotificationPageState createState() => UnreadNotificationPageState();
}

class UnreadNotificationPageState extends State<UnreadNotificationPage>
    with AutomaticKeepAliveClientMixin<UnreadNotificationPage> {
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
              _buildNotificationReceived(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationReceived(BuildContext context) {
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
            return NotificationreceivedItemWidget();
          },
        ),
      ),
    );
  }
}

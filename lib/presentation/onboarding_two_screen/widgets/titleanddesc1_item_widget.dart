import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class Titleanddesc1ItemWidget extends StatelessWidget {
  const Titleanddesc1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Request Money",
          style: CustomTextStyles.titleLargePoppinsErrorContainer,
        ),
        SizedBox(height: 15.v),
        SizedBox(
          width: 254.h,
          child: Text(
            "You can request money to friends or family to send as much money as you want",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.71,
            ),
          ),
        ),
      ],
    );
  }
}

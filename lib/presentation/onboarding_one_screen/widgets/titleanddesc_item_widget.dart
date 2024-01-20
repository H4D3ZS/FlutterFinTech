import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class TitleanddescItemWidget extends StatelessWidget {
  const TitleanddescItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Send Money",
          style: CustomTextStyles.titleLargePoppinsErrorContainer,
        ),
        SizedBox(height: 15.v),
        SizedBox(
          width: 233.h,
          child: Text(
            "Send money easily and with one click everything will be sent every time you make a transaction",
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

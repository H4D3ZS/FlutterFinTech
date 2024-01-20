import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class SlidertitleanddescItemWidget extends StatelessWidget {
  const SlidertitleanddescItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Easy To Use",
          style: CustomTextStyles.titleLargePoppinsErrorContainer,
        ),
        SizedBox(height: 15.v),
        SizedBox(
          width: 254.h,
          child: Text(
            "Very easy to use and easy to understand for those of you who are beginners",
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

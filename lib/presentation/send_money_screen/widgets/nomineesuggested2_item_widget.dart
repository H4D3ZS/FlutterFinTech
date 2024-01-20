import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class Nomineesuggested2ItemWidget extends StatelessWidget {
  const Nomineesuggested2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "50",
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray50,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          6.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}

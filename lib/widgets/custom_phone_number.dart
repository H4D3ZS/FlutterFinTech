import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({Key? key, required Country country, required TextEditingController controller, required Null Function(Country value) onTap})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(
          4.h,
        ),
        border: Border.all(
          color: appTheme.gray900,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      ),
      child: Row(
        children: [],
      ),
    );
  }
}

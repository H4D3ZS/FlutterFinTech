import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple5001,
      );
  static BoxDecoration get fillDeeppurple5002 => BoxDecoration(
        color: appTheme.deepPurple5002,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray10002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9001 => BoxDecoration(
        color: appTheme.gray10001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9002 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray900,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    
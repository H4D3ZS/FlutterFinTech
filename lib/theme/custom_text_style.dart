import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumInterBluegray200 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumInterBluegray400 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumInterOnError =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.72),
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
      );
  static get bodyMediumff999999 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF999999),
      );
  static get bodySmallBlack90087 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90087,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallGray500_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
      );
  // Display text style
  static get displayMediumWhiteA700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeGray400 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeff333333 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF333333),
      );
  // Poppins text style
  static get poppinsGray5001 => TextStyle(
        color: appTheme.gray5001,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray5002 => TextStyle(
        color: appTheme.gray5002,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  static get poppinsGray5002Medium => TextStyle(
        color: appTheme.gray5002,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray5002Medium3 => TextStyle(
        color: appTheme.gray5002,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray5002SemiBold => TextStyle(
        color: appTheme.gray5002,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsWhiteA700Regular => TextStyle(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargePoppinsErrorContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsGray5002 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray5002,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsOnPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsOnPrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleMediumErrorContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray5002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary_2 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumff262626 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF262626),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff262626_1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF262626),
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallInterBluegray400 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallff333333 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF333333),
      );
}

extension on TextStyle {
  TextStyle get ubuntu {
    return copyWith(
      fontFamily: 'Ubuntu',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

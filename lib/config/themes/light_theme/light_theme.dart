import 'package:canton_design_system/canton_design_system.dart';
import 'package:canton_design_system/config/themes/light_theme/light_color_palette.dart';
import 'package:canton_design_system/config/themes/text_themes/mobile_text_theme.dart';
import 'package:flutter/material.dart';

ThemeData cantonLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: MobileTextTheme.theme(base),
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 1.5,
      color: CantonColors.borderPrimary,
    ),
    iconTheme: IconThemeData(
      color: CantonColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: CantonColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: CantonColors.textPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        letterSpacing: 0.0,
        height: 1.5,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // 23 for height 65, 18 for height 50
      contentPadding: const EdgeInsets.all(15),
      filled: true,
      isCollapsed: true,
      fillColor: CantonColors.gray[300],
      hoverColor: CantonColors.gray[400],
      enabledBorder: SquircleInputBorder(
        radius: BorderRadius.all(Radius.circular(35)),
        side: BorderSide(
          color: CantonColors.transparent,
          width: 1.5,
        ),
      ),
      errorBorder: SquircleInputBorder(
        radius: BorderRadius.all(Radius.circular(35)),
        side: BorderSide(
          color: CantonColors.bgDangerInverse!,
          width: 1.5,
        ),
      ),
      focusedBorder: SquircleInputBorder(
        radius: BorderRadius.all(Radius.circular(35)),
        side: BorderSide(
          color: CantonColors.transparent,
          width: 1.5,
        ),
      ),
      focusedErrorBorder: SquircleInputBorder(
        radius: BorderRadius.all(Radius.circular(35)),
        side: BorderSide(
          color: CantonColors.bgDangerInverse!,
          width: 1.5,
        ),
      ),
      helperStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: CantonColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.colorScheme.secondaryVariant,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.colorScheme.secondaryVariant,
        height: 1.5,
      ),
    ),
    cardTheme: CardTheme(
      shape: SquircleBorder(
        radius: BorderRadius.circular(37),
        side: BorderSide(
          width: 1.5,
          color: CantonColors.gray[400]!,
        ),
      ),
      elevation: 0.0,
      color: CantonColors.bgPrimary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: CantonColors.bgPrimary,
      modalBackgroundColor: CantonColors.bgPrimary,
      modalElevation: 0.5,
      shape: SquircleBorder(radius: BorderRadius.circular(45)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: CantonColors.blue,
    ),
    appBarTheme: AppBarTheme(
      color: CantonColors.transparent,
      foregroundColor: CantonColors.transparent,
      textTheme: MobileTextTheme.theme(base),
      elevation: 0.0,
    ),
    colorScheme: CantonColors.colorScheme,
    primaryColor: CantonColors.blue,
    errorColor: CantonColors.bgDangerInverse,
    canvasColor: CantonColors.bgCanvas,
    splashColor: CantonColors.transparent,
    highlightColor: CantonColors.transparent,
    backgroundColor: CantonColors.bgPrimary,
    scaffoldBackgroundColor: CantonColors.bgCanvas,
    dividerColor: CantonColors.gray[200],
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: CantonColors.transparent,
      elevation: 0.0,
      selectedIconTheme: IconThemeData(size: 20),
      unselectedIconTheme: IconThemeData(size: 20),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
}

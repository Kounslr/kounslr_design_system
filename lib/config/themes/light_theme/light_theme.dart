import 'package:kounslr_design_system/kounslr_design_system.dart';
import 'package:flutter/cupertino.dart';

ThemeData kounslrLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: MobileTextTheme.theme(base),
    primaryIconTheme: IconThemeData(size: 24, color: KounslrColors.iconPrimary),
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: KounslrColors.borderPrimary!,
    ),
    iconTheme: IconThemeData(
      color: KounslrColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: KounslrColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: KounslrColors.textPrimary,
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
      fillColor: CupertinoColors.systemGrey6,
      hoverColor: KounslrColors.gray[400],
      enabledBorder: SquircleInputBorder(
        radius: SmoothBorderRadius.all(SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1)),
        side: BorderSide(
          color: KounslrColors.transparent,
          width: 1.5,
        ),
      ),
      errorBorder: SquircleInputBorder(
        radius: SmoothBorderRadius.all(SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1)),
        side: BorderSide(
          color: KounslrColors.transparent,
          width: 1.5,
        ),
      ),
      focusedBorder: SquircleInputBorder(
        radius: SmoothBorderRadius.all(SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1)),
        side: BorderSide(
          color: KounslrColors.transparent,
          width: 1.5,
        ),
      ),
      focusedErrorBorder: SquircleInputBorder(
        radius: SmoothBorderRadius.all(SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1)),
        side: BorderSide(
          color: KounslrColors.transparent,
          width: 1.5,
        ),
      ),
      helperStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: KounslrColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: KounslrColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: KounslrColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: KounslrColors.colorScheme.secondaryVariant,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: KounslrColors.colorScheme.secondaryVariant,
        height: 1.5,
      ),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.zero,
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius.all(
          SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1),
        ),
        side: BorderSide(
          width: 1.5,
          color: KounslrColors.borderPrimary!,
        ),
      ),
      elevation: 0.0,
      color: KounslrColors.bgPrimary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: KounslrColors.bgPrimary,
      modalBackgroundColor: KounslrColors.bgPrimary,
      modalElevation: 0.5,
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius.vertical(
          top: SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1),
        ),
        side: BorderSide(
          width: 1.5,
          color: KounslrColors.borderPrimary!,
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: KounslrColors.blue,
    ),
    appBarTheme: AppBarTheme(
      color: KounslrColors.transparent,
      foregroundColor: KounslrColors.transparent,
      titleTextStyle: MobileTextTheme.theme(base).headline4,
      toolbarTextStyle: MobileTextTheme.theme(base).headline5,
      elevation: 0.0,
    ),
    colorScheme: KounslrColors.colorScheme,
    primaryColor: KounslrColors.blue,
    errorColor: KounslrColors.bgDangerInverse,
    canvasColor: KounslrColors.bgCanvasMobile,
    splashColor: KounslrColors.transparent,
    highlightColor: KounslrColors.transparent,
    backgroundColor: KounslrColors.bgPrimary,
    scaffoldBackgroundColor: KounslrColors.bgCanvas,
    dividerColor: KounslrColors.borderPrimary!,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: KounslrDarkColors.colorScheme.secondaryVariant,
      selectedItemColor: base.primaryColor,
      selectedLabelStyle: MobileTextTheme.theme(base).bodyText2?.copyWith(fontWeight: FontWeight.w500),
      unselectedLabelStyle: MobileTextTheme.theme(base).bodyText2?.copyWith(fontWeight: FontWeight.w500),
      backgroundColor: KounslrColors.bgPrimary,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}

import 'package:kounslr_design_system/kounslr_design_system.dart';

ThemeData kounslrDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    splashColor: KounslrDarkColors.transparent,
    highlightColor: Colors.transparent,
    textTheme: MobileTextTheme.theme(base),
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: KounslrDarkColors.borderPrimary!,
    ),
    iconTheme: IconThemeData(
      color: KounslrDarkColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: KounslrDarkColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: KounslrDarkColors.textPrimary,
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
      fillColor: Color(0xFF2D2D2F),
      hoverColor: KounslrDarkColors.gray[400],
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
        color: KounslrDarkColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: KounslrDarkColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: KounslrDarkColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: KounslrDarkColors.colorScheme.secondaryVariant,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: KounslrDarkColors.colorScheme.secondaryVariant,
        height: 1.5,
      ),
    ),
    colorScheme: KounslrDarkColors.colorScheme,
    cardTheme: CardTheme(
      margin: EdgeInsets.zero,
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius.all(
          SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1),
        ),
        side: BorderSide(
          width: 1.5,
          color: KounslrDarkColors.borderPrimary!,
        ),
      ),
      elevation: 0.0,
      color: KounslrDarkColors.colorScheme.secondary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: KounslrDarkColors.bgPrimary,
      modalBackgroundColor: KounslrDarkColors.bgPrimary,
      modalElevation: 0.5,
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius.all(
          SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1),
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: KounslrDarkColors.blue),
    appBarTheme: AppBarTheme(
      color: KounslrColors.transparent,
      foregroundColor: KounslrColors.transparent,
      titleTextStyle: MobileTextTheme.theme(base).headline4,
      toolbarTextStyle: MobileTextTheme.theme(base).headline5,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: KounslrDarkColors.colorScheme.secondaryVariant,
      selectedItemColor: base.primaryColor,
      selectedLabelStyle: MobileTextTheme.theme(base).bodyText2?.copyWith(fontWeight: FontWeight.w500),
      unselectedLabelStyle: MobileTextTheme.theme(base).bodyText2?.copyWith(fontWeight: FontWeight.w500),
      backgroundColor: KounslrDarkColors.bgCanvasMobile,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: KounslrDarkColors.blue,
    errorColor: KounslrDarkColors.bgDangerInverse,
    canvasColor: KounslrDarkColors.bgCanvasMobile,
    backgroundColor: KounslrDarkColors.bgPrimary,
    scaffoldBackgroundColor: KounslrDarkColors.bgCanvasMobile,
    dividerColor: KounslrDarkColors.borderPrimary!,
  );
}

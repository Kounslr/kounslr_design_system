import 'package:kounslr_design_system/kounslr_design_system.dart';

String kFontFamily = 'Inter';

double kLineHeight = 1.25;

double kLineHeightTwo = 1.5;

double kDefaultBorderRadius = 15.0;

bool isDarkMode(BuildContext context) {
  if (Theme.of(context).colorScheme == KounslrDarkColors.colorScheme) {
    return true;
  } else {
    return false;
  }
}

Color? lightDarkModeDefaultTextColor(ThemeData themeData) {
  if (themeData.brightness == Brightness.dark) {
    return KounslrColors.white;
  } else {
    return KounslrColors.black;
  }
}

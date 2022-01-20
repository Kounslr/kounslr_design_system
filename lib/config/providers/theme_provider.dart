import 'package:kounslr_design_system/kounslr_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeRepository extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool dark) {
    themeMode = dark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

final themeProvider = ChangeNotifierProvider<ThemeRepository>((ref) {
  return ThemeRepository();
});

import 'package:kounslr_design_system/kounslr_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KounslrApp extends StatelessWidget {
  final String? title;
  final Widget? home;
  final Color? primaryLightColor;
  final Color? primaryDarkColor;
  final Color primaryLightVariantColor;
  final Color primaryDarkVariantColor;
  final List<NavigatorObserver>? navigatorObservers;
  final Widget Function(BuildContext, Widget?)? builder;
  final ThemeData? lightTheme, darkTheme;

  const KounslrApp({
    required this.title,
    required this.home,
    required this.primaryLightColor,
    required this.primaryDarkColor,
    this.primaryLightVariantColor = KounslrColors.blue,
    this.primaryDarkVariantColor = KounslrDarkColors.blue,
    this.navigatorObservers,
    this.builder,
    this.lightTheme,
    this.darkTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final repo = watch(themeProvider);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title!,
          themeMode: repo.themeMode,
          navigatorObservers: navigatorObservers ?? [],
          theme: lightTheme ??
              kounslrLightTheme().copyWith(
                primaryColor: primaryLightColor,
                colorScheme: kounslrLightTheme().colorScheme.copyWith(primaryVariant: primaryLightVariantColor),
              ),
          darkTheme: darkTheme ??
              kounslrDarkTheme().copyWith(
                primaryColor: primaryDarkColor,
                colorScheme: kounslrDarkTheme().colorScheme.copyWith(primaryVariant: primaryDarkVariantColor),
              ),
          home: home,
          builder: builder,
        );
      },
    );
  }
}

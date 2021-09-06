import 'package:canton_design_system/canton_design_system.dart';

class CantonScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;

  const CantonScaffold({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.only(left: 17, right: 17),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CantonMethods.defocusTextfield(context),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
        bottomNavigationBar: bottomNavBar,
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: padding ?? const EdgeInsets.only(left: 17, right: 17),
            child: body,
          ),
        ),
      ),
    );
  }
}

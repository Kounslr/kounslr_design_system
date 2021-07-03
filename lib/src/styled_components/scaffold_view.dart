import 'package:canton_design_system/canton_design_system.dart';

class CantonScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final AppBar? appBar;
  final EdgeInsets padding;

  const CantonScaffold({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.appBar,
    this.padding = const EdgeInsets.only(top: 17, left: 17, right: 17),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CantonMethods.defocusTextfield(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,
        bottomNavigationBar: bottomNavBar,
        body: SafeArea(
          child: Padding(
            padding: padding,
            child: body,
          ),
        ),
      ),
    );
  }
}

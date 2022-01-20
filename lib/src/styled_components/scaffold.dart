import 'package:kounslr_design_system/kounslr_design_system.dart';

class KounslrScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset, safeArea;

  const KounslrScaffold({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.symmetric(horizontal: 17),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.safeArea = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget _body() {
      if (safeArea!) {
        return SafeArea(
          child: Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 17),
            child: body,
          ),
        );
      } else {
        return Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 17),
          child: body,
        );
      }
    }

    return GestureDetector(
      onTap: () => KounslrMethods.defocusTextfield(context),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
        bottomNavigationBar: bottomNavBar,
        backgroundColor: backgroundColor,
        body: _body(),
      ),
    );
  }
}

class KounslrScaffoldType2 extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset, safeArea;

  const KounslrScaffoldType2({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.symmetric(horizontal: 17),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.safeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => KounslrMethods.defocusTextfield(context),
      child: SafeArea(
        child: Container(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 17),
          color: backgroundColor ?? Theme.of(context).backgroundColor,
          child: body,
        ),
      ),
    );
  }
}

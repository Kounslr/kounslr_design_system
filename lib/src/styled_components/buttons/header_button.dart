import 'package:canton_design_system/canton_design_system.dart';

class CantonHeaderButton extends StatelessWidget {
  const CantonHeaderButton({
    Key? key,
    this.backgroundColor,
    this.icon,
    this.onPressed,
    this.radius,
    this.size,
    this.isClear,
  }) : super(key: key);
  final void Function()? onPressed;
  final Widget? icon;
  final Color? backgroundColor;
  final BorderRadius? radius;
  final double? size;
  final bool? isClear;

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton(
      containerColor: [null, false].contains(isClear)
          ? backgroundColor ?? Theme.of(context).colorScheme.secondary
          : CantonColors.transparent,
      containerHeight: size ?? 55.0,
      containerWidth: size ?? 55.0,
      radius: radius,
      containerPadding: const EdgeInsets.all(0),
      prefixIcon: icon,
      alignment: [null, false].contains(isClear)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      onPressed: onPressed ?? () {},
    );
  }
}

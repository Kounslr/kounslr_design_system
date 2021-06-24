import 'package:canton_design_system/canton_design_system.dart';

class CantonHeaderButton extends StatelessWidget {
  const CantonHeaderButton({
    Key? key,
    this.backgroundColor,
    this.icon,
    this.onPressed,
    this.radius,
    this.size,
  }) : super(key: key);
  final void Function()? onPressed;
  final Widget? icon;
  final Color? backgroundColor;
  final BorderRadius? radius;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton(
      containerColor:
          backgroundColor ?? Theme.of(context).colorScheme.secondary,
      containerHeight: size ?? 60.0,
      containerWidth: size ?? 60.0,
      radius: radius,
      containerPadding: const EdgeInsets.all(0),
      prefixIcon: icon,
      alignment: MainAxisAlignment.center,
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}

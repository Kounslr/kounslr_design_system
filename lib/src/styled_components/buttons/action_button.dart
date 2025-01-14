import 'package:kounslr_design_system/kounslr_design_system.dart';

class KounslrActionButton extends StatelessWidget {
  final Widget icon;
  final Color? iconColor;
  final double? iconSize, containerWidth, containerHeight;
  final EdgeInsets? padding;
  final MainAxisAlignment? alignment;
  final void Function()? onPressed;

  const KounslrActionButton({
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.containerWidth,
    this.containerHeight,
    this.alignment,
    this.padding,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return KounslrPrimaryButton(
      prefixIcon: icon,
      borderRadius: SmoothBorderRadius.zero,
      color: KounslrColors.transparent,
      alignment: alignment ?? MainAxisAlignment.center,
      containerWidth: containerWidth ?? 40,
      containerHeight: containerHeight ?? 40,
      iconColor: iconColor ?? Theme.of(context).primaryColor,
      iconSize: iconSize ?? 21,
      padding: padding ?? const EdgeInsets.all(5),
      onPressed: onPressed,
    );
  }
}

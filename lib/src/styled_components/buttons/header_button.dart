import 'package:kounslr_design_system/kounslr_design_system.dart';

class KounslrHeaderButton extends StatelessWidget {
  const KounslrHeaderButton({
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
  final SmoothBorderRadius? radius;
  final double? size;
  final bool? isClear;

  @override
  Widget build(BuildContext context) {
    return KounslrPrimaryButton(
      color: [false].contains(isClear)
          ? Theme.of(context).colorScheme.secondary
          : backgroundColor ?? KounslrColors.transparent,
      containerHeight: size ?? 55.0,
      containerWidth: size ?? 55.0,
      borderRadius: radius ??
          SmoothBorderRadius.all(
            SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1),
          ),
      padding: const EdgeInsets.all(0),
      prefixIcon: icon,
      alignment: [null, false].contains(isClear) ? MainAxisAlignment.center : MainAxisAlignment.end,
      onPressed: onPressed ?? () {},
    );
  }
}

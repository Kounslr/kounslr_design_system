import 'package:canton_design_system/canton_design_system.dart';
import 'package:canton_design_system/src/styled_components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class CantonActionButton extends StatelessWidget {
  final Widget icon;
  final Color? iconColor;
  final double? iconSize, containerWidth, containerHeight;
  final void Function() onPressed;

  const CantonActionButton({
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.containerWidth,
    this.containerHeight,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton2(
      prefixIcon: icon,
      borderRadius: BorderRadius.zero,
      color: CantonColors.transparent,
      alignment: MainAxisAlignment.center,
      containerWidth: containerWidth ?? 40,
      containerHeight: containerHeight ?? 40,
      iconColor: iconColor ?? Theme.of(context).primaryColor,
      iconSize: iconSize ?? 21,
      padding: const EdgeInsets.all(5),
      onPressed: onPressed,
    );
  }
}

import 'package:canton_design_system/canton_design_system.dart';
import 'package:canton_design_system/src/styled_components/buttons/button_animation_controller.dart';
import 'package:flutter/material.dart';

class CantonPrimaryButton extends StatelessWidget {
  final String? buttonText;
  final MainAxisAlignment? alignment;
  final EdgeInsets? containerPadding;
  final bool enabled;
  final void Function() onPressed;
  final double? iconSize, iconPadding, containerWidth, containerHeight;
  final BorderSide? border;
  final BorderRadius? radius;
  final Widget? prefixIcon, suffixIcon;
  final Color? containerColor, textColor, iconColor;

  const CantonPrimaryButton({
    this.buttonText,
    required this.onPressed,
    this.alignment,
    this.border,
    this.containerPadding,
    this.radius,
    this.enabled = true,
    this.iconSize,
    this.iconPadding,
    this.containerWidth,
    this.containerHeight,
    this.prefixIcon,
    this.suffixIcon,
    this.containerColor,
    this.textColor,
    this.iconColor,
  });

  @override
  @override
  Widget build(BuildContext context) {
    HSLColor _buttonColor = HSLColor.fromColor(containerColor!);
    final Size size = MediaQuery.of(context).size;

    Widget? prefixIconWidget() {
      if (prefixIcon != null) {
        return prefixIcon;
      } else {
        return Container();
      }
    }

    Widget suffixIconWidget() {
      if (suffixIcon != null) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: suffixIcon,
        );
      } else {
        return Container();
      }
    }

    Widget textWidget() {
      if (buttonText != null) {
        return Text(
          buttonText!,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: enabled
                    ? textColor
                    : Theme.of(context).colorScheme.secondaryVariant,
              ),
        );
      } else {
        return Container();
      }
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: ShapeDecoration(
          color: enabled
              ? _buttonColor.toColor()
              : Theme.of(context).colorScheme.onSecondary,
          shape: SquircleBorder(
            radius: radius ?? BorderRadius.circular(45),
            side: border ?? BorderSide.none,
          ),
        ),
        height: containerHeight ?? 65.0,
        width: containerWidth ?? size.width,
        padding:
            containerPadding ?? const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: alignment ?? MainAxisAlignment.spaceBetween,
          children: [
            prefixIconWidget()!,
            textWidget(),
            suffixIconWidget(),
          ],
        ),
      ),
    );
  }
}

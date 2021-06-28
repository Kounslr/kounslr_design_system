import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/material.dart';

class CantonPrimaryButton extends StatefulWidget {
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
  _CantonPrimaryButtonState createState() => _CantonPrimaryButtonState();
}

class _CantonPrimaryButtonState extends State<CantonPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    HSLColor _buttonColor = HSLColor.fromColor(
        widget.containerColor ?? Theme.of(context).primaryColor);

    Widget? prefixIconWidget() {
      if (widget.prefixIcon != null) {
        return widget.prefixIcon;
      } else {
        return Container();
      }
    }

    Widget suffixIconWidget() {
      if (widget.suffixIcon != null) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: widget.suffixIcon,
        );
      } else {
        return Container();
      }
    }

    Widget textWidget() {
      if (widget.buttonText != null) {
        return Text(
          widget.buttonText!,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: widget.enabled
                    ? widget.textColor
                    : Theme.of(context).colorScheme.secondaryVariant,
              ),
        );
      } else {
        return Container();
      }
    }

    return GestureDetector(
      onTapDown: (_) => widget.enabled
          ? setState(() {
              _buttonColor =
                  _buttonColor.withLightness(_buttonColor.lightness - 0.15);
            })
          : DoNothingAction(),
      onTapUp: (_) {
        widget.enabled
            ? setState(() => {
                  widget.onPressed(),
                  _buttonColor =
                      _buttonColor.withLightness(_buttonColor.lightness + 0.15)
                })
            : DoNothingAction();
      },
      child: AnimatedContainer(
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 200),
        decoration: ShapeDecoration(
          color: widget.enabled
              ? _buttonColor.toColor()
              : Theme.of(context).colorScheme.onSecondary,
          shape: SquircleBorder(
            radius: widget.radius ?? BorderRadius.circular(45),
            side: widget.border ?? BorderSide.none,
          ),
        ),
        height: widget.containerHeight ?? 65.0,
        width: widget.containerWidth ?? size.width,
        padding: widget.containerPadding ??
            const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: widget.alignment ?? MainAxisAlignment.spaceBetween,
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

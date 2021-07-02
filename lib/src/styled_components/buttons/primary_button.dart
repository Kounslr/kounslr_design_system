import 'package:canton_design_system/canton_design_system.dart';
import 'package:canton_design_system/src/styled_components/buttons/button_animation_controller.dart';
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
  _CantonPrimaryButtonState createState() =>
      _CantonPrimaryButtonState(Duration(milliseconds: 100));
}

class _CantonPrimaryButtonState
    extends ButtonAnimationControllerState<CantonPrimaryButton> {
  _CantonPrimaryButtonState(Duration duration) : super(duration);

  HSLColor _buttonColor = HSLColor.fromColor(Color(0));

  void _handleTapDown(TapDownDetails details) {
    if (widget.enabled) {
      _buttonColor = _buttonColor.withLightness(_buttonColor.lightness + 0.15);
      animationController.forward();
    }
  }

  void _handleTapUp(TapUpDetails details) {
    _buttonColor = HSLColor.fromColor(widget.containerColor!);
    animationController.reverse();
    widget.onPressed.call();
  }

  @override
  void initState() {
    super.initState();
    _buttonColor = HSLColor.fromColor(widget.containerColor!);
  }

  @override
  Widget build(BuildContext context) {
    HSLColor _buttonColor = HSLColor.fromColor(widget.containerColor!);
    final Size size = MediaQuery.of(context).size;

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
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Container(
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
                mainAxisAlignment:
                    widget.alignment ?? MainAxisAlignment.spaceBetween,
                children: [
                  prefixIconWidget()!,
                  textWidget(),
                  suffixIconWidget(),
                ],
              ),
            );
          }),
    );
  }
}

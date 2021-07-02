import 'package:flutter/material.dart';

abstract class ButtonAnimationControllerState<T extends StatefulWidget>
    extends State<T> with SingleTickerProviderStateMixin {
  ButtonAnimationControllerState(this.animationDuration);
  final Duration animationDuration;
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

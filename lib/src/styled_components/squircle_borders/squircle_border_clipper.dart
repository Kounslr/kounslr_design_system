import 'package:kounslr_design_system/kounslr_design_system.dart';

class ClipSquircleBorder extends StatelessWidget {
  const ClipSquircleBorder({Key? key, this.radius, this.child}) : super(key: key);
  final Widget? child;
  final BorderRadius? radius;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(
        shape: SquircleBorder(radius: radius),
      ),
      child: child,
    );
  }
}

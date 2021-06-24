import 'package:canton_design_system/canton_design_system.dart';

class IconlyIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final double? size;

  const IconlyIcon(this.path, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color: color ?? cantonGrey[900],
      width: size ?? 24,
      height: size ?? 24,
      semanticsLabel: '',
    );
  }
}

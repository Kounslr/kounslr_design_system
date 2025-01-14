import '../../kounslr_design_system.dart';

class KounslrTag extends StatelessWidget {
  final Color? color;

  const KounslrTag({Key? key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14,
      width: 14,
      decoration: BoxDecoration(
        border: Border.all(color: color!, width: 3),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

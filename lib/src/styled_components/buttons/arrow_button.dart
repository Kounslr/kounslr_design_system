import 'package:kounslr_design_system/kounslr_design_system.dart';

class KounslrArrowButton extends StatelessWidget {
  const KounslrArrowButton({Key? key, required this.view}) : super(key: key);

  final Widget view;

  @override
  Widget build(BuildContext context) {
    return KounslrActionButton(
      padding: EdgeInsets.zero,
      alignment: MainAxisAlignment.end,
      icon: Icon(
        Iconsax.arrow_right_2,
        size: 20,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {
        KounslrMethods.viewTransition(context, view);
      },
    );
  }
}

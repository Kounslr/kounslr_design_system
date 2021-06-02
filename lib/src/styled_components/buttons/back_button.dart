import 'package:canton_design_system/src/styled_components/buttons/primary_button.dart';
import '../../../canton_design_system.dart';

class CantonBackButton extends StatelessWidget {
  final bool isClear;
  final void Function() onPressed;
  const CantonBackButton({this.isClear, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton(
      containerColor: [null, false].contains(isClear)
          ? Theme.of(context).colorScheme.secondary
          : CantonColors.transparent,
      containerHeight: 60.0,
      containerWidth: 60.0,
      radius: BorderRadius.circular(50),
      containerPadding: const EdgeInsets.all(0),
      prefixIcon: IconlyIcon(
        IconlyBold.ArrowLeft2,
        color: [null, false].contains(isClear)
            ? Theme.of(context).colorScheme.secondaryVariant
            : Theme.of(context).primaryColor,
        size: 27,
      ),
      alignment: [null, false].contains(isClear)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}

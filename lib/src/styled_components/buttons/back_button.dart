import '../../../kounslr_design_system.dart';

class KounslrBackButton extends StatelessWidget {
  final bool? isClear;
  final void Function()? onPressed;
  const KounslrBackButton({this.isClear, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return KounslrPrimaryButton(
      color: [null, false].contains(isClear) ? Theme.of(context).colorScheme.secondary : KounslrColors.transparent,
      containerHeight: 60.0,
      containerWidth: 60.0,
      borderRadius: SmoothBorderRadius.all(
        SmoothRadius(cornerRadius: kDefaultBorderRadius, cornerSmoothing: 1),
      ),
      padding: EdgeInsets.zero,
      prefixIcon: Icon(
        Iconsax.arrow_left_3,
        color: [null, false].contains(isClear)
            ? Theme.of(context).colorScheme.secondaryVariant
            : Theme.of(context).primaryColor,
        size: 27,
      ),
      alignment: [null, false].contains(isClear) ? MainAxisAlignment.center : MainAxisAlignment.start,
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}

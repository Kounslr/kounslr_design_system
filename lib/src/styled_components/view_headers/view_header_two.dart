import 'package:kounslr_design_system/kounslr_design_system.dart';

class ViewHeaderTwo extends StatelessWidget {
  final String? title;
  final bool? backButton;
  final bool? isBackButtonClear;
  final Widget? buttonOne;
  final Widget? buttonTwo;
  final Color? textColor;
  final void Function()? backButtonFunction;
  const ViewHeaderTwo(
      {this.title,
      this.backButton,
      this.isBackButtonClear,
      this.buttonOne,
      this.buttonTwo,
      this.textColor,
      this.backButtonFunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ![null, false].contains(backButton)
            ? KounslrBackButton(
                isClear: isBackButtonClear ?? true,
                onPressed: () {
                  backButtonFunction != null ? backButtonFunction!() : DoNothingAction();
                  Navigator.pop(context);
                },
              )
            : buttonOne ?? KounslrNullButton(),
        Text(
          title!,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: textColor ?? Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w600),
        ),
        buttonTwo ?? KounslrNullButton()
      ],
    );
  }
}

import 'package:canton_design_system/canton_design_system.dart';

class ViewHeaderOne extends StatelessWidget {
  final String? title;
  final Widget? button;

  const ViewHeaderOne({this.title, this.button});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Spacer(),
        button ??
            CantonHeaderButton(
              backgroundColor: CantonColors.transparent,
              icon: Container(),
              onPressed: () {},
            ),
      ],
    );
  }
}

import 'package:canton_design_system/canton_design_system.dart';

class ViewHeaderOne extends StatelessWidget {
  final String? title;
  final Widget? button;

  const ViewHeaderOne({this.title, this.button});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Spacer(),
        button ??
            CantonHeaderButton(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                FeatherIcons.plus,
                color: CantonColors.white,
                size: 24,
              ),
              onPressed: () {
                print('pressed');
              },
            ),
      ],
    );
  }
}

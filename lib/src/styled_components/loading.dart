import 'package:kounslr_design_system/kounslr_design_system.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitChasingDots(
        size: 40,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

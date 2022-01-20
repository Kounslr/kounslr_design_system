import 'package:kounslr_design_system/kounslr_design_system.dart';

class KounslrNullButton extends StatelessWidget {
  const KounslrNullButton();

  @override
  Widget build(BuildContext context) {
    return KounslrHeaderButton(
      backgroundColor: KounslrColors.transparent,
      icon: Container(),
    );
  }
}

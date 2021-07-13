import 'package:canton_design_system/canton_design_system.dart';

class CantonMethods {
  /// Defocuses a textfield
  static void defocusTextfield(BuildContext context) =>
      FocusScope.of(context).requestFocus(new FocusNode());

  /// Default transition for switching views
  static Future<void> viewTransition(BuildContext context, Widget view) =>
      Navigator.push(
        context,
        PageTransition(
          child: view,
          type: PageTransitionType.rightToLeft,
          curve: Curves.ease,
          duration: Duration(milliseconds: 300),
        ),
      );

  /// Adds '...' to the end of a string
  static String addDotsToString(String string, int index) {
    List<String> wordList = string.split(' ');

    String result =
        wordList.sublist(0, index).join(' ').replaceAll(RegExp(r' '), ' ') +
            '...';

    return result;
  }
}

extension CantonStringMethods on String {
  static String addDotsToString(String string, int index) {
    List<String> wordList = string.split(' ');

    String result =
        wordList.sublist(0, index).join(' ').replaceAll(RegExp(r' '), ' ') +
            '...';

    return result;
  }
}

extension CantonListMethods on List {
  static List removeDuplicates(List list) {
    Map<String, Object> mapFilter = {};

    for (var item in list) {
      mapFilter[item.id!] = item;
    }
    list = mapFilter.values.toList();

    return list;
  }
}

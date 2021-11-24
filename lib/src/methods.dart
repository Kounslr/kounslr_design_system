import 'package:canton_design_system/canton_design_system.dart';

class CantonMethods {
  /// Defocuses a textfield
  static void defocusTextfield(BuildContext context) => FocusScope.of(context).requestFocus(new FocusNode());

  /// Default transition for switching views
  static Future<void> viewTransition(BuildContext context, Widget view, {void Function()? onNavigateView}) {
    return Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        curve: Curves.easeInOut,
        inheritTheme: true,
        child: Builder(
          builder: (context) {
            if (onNavigateView != null) onNavigateView();
            return view;
          },
        ),
      ),
    );
  }

  /// Adds '...' to the end of a string
  static String addDotsToString(String string, int index) {
    List<String> wordList = string.split(' ');

    String result = wordList.sublist(0, index).join(' ').replaceAll(RegExp(r' '), ' ') + '...';

    return result;
  }

  static String separateNumberByThreeDigits({required int source, bool? commas}) {
    RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    String Function(Match) mathFunc;

    if ([null, false].contains(commas)) {
      mathFunc = (Match match) => '${match[1]} ';
    } else {
      mathFunc = (Match match) => '${match[1]},';
    }

    String result = source.toString().replaceAllMapped(reg, mathFunc);

    return result;
  }

  static String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }

  static Color alternateCanvasColor(BuildContext context, {int? index, List<int?>? targetIndexes}) {
    if (![targetIndexes, index].contains(null)) {
      if (!targetIndexes!.contains(index)) return Theme.of(context).canvasColor;
    }

    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return Theme.of(context).canvasColor;
    }
    return Theme.of(context).backgroundColor;
  }
}

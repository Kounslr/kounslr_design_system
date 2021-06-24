import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/material.dart';

/// Essentially it's the github/primer color palette with a few modifications
/// that I'm creating here. It says CantonColors just to make it easier for me
/// to reference however all credit goes to the Primer Design System.

class CantonColors {
  static const MaterialColor gray = MaterialColor(
    0xFF24292e,
    <int, Color>{
      100: const Color(0xFFfafbfc),
      200: const Color(0xFFf6f8fa),
      300: const Color(0xFFe1e4e8),
      400: const Color(0xFFd1d5da),
      500: const Color(0xFF959da5),
      600: const Color(0xFF6a737d),
      700: const Color(0xFF586069),
      800: const Color(0xFF444d56),
      900: const Color(0xFF2f363d),
      1000: const Color(0xFF24292e),
    },
  );
  static const MaterialColor blue = MaterialColor(
    0xFF0366d6,
    <int, Color>{
      100: const Color(0xFFf1f8ff),
      200: const Color(0xFFdbedff),
      300: const Color(0xFFc8e1ff),
      400: const Color(0xFF79b8ff),
      500: const Color(0xFF2188ff),
      600: const Color(0xFF0366d6),
      700: const Color(0xFF005cc5),
      800: const Color(0xFF044289),
      900: const Color(0xFF032f62),
      1000: const Color(0xFF05264c),
    },
  );
  static const MaterialColor green = MaterialColor(
    0xFF28a745,
    <int, Color>{
      100: const Color(0xFFf0fff4),
      200: const Color(0xFFdcffe4),
      300: const Color(0xFFbef5cb),
      400: const Color(0xFF85e89d),
      500: const Color(0xFF34d058),
      600: const Color(0xFF28a745),
      700: const Color(0xFF22863a),
      800: const Color(0xFF176f2c),
      900: const Color(0xFF165c26),
      1000: const Color(0xFF144620),
    },
  );
  static const MaterialColor purple = MaterialColor(
    0xFF6f42c1,
    <int, Color>{
      100: const Color(0xFFf5f0ff),
      200: const Color(0xFFe6dcfd),
      300: const Color(0xFFd1bcf9),
      400: const Color(0xFFb392f0),
      500: const Color(0xFF8a63d2),
      600: const Color(0xFF6f42c1),
      700: const Color(0xFF5a32a3),
      800: const Color(0xFF4c2889),
      900: const Color(0xFF3a1d6e),
      1000: const Color(0xFF29134e),
    },
  );
  static const MaterialColor yellow = MaterialColor(
    0xFFffd33d,
    <int, Color>{
      100: const Color(0xFFfffdef),
      200: const Color(0xFFfffbdd),
      300: const Color(0xFFfff5b1),
      400: const Color(0xFFffea7f),
      500: const Color(0xFFffdf5d),
      600: const Color(0xFFffd33d),
      700: const Color(0xFFf9c513),
      800: const Color(0xFFdbab09),
      900: const Color(0xFFb08800),
      1000: const Color(0xFF735c0f),
    },
  );
  static const MaterialColor orange = MaterialColor(
    0xFFf66a0a,
    <int, Color>{
      100: const Color(0xFFfff8f2),
      200: const Color(0xFFffebda),
      300: const Color(0xFFffd1ac),
      400: const Color(0xFFffab70),
      500: const Color(0xFFfb8532),
      600: const Color(0xFFf66a0a),
      700: const Color(0xFFe36209),
      800: const Color(0xFFd15704),
      900: const Color(0xFFc24e00),
      1000: const Color(0xFFa04100),
    },
  );
  static const MaterialColor red = MaterialColor(
    0xFFd73a49,
    <int, Color>{
      100: const Color(0xFFffeef0),
      200: const Color(0xFFffeef0),
      300: const Color(0xFFfdaeb7),
      400: const Color(0xFFf97583),
      500: const Color(0xFFea4a5a),
      600: const Color(0xFFd73a49),
      700: const Color(0xFFcb2431),
      800: const Color(0xFFb31d28),
      900: const Color(0xFF9e1c23),
      1000: const Color(0xFF86181d),
    },
  );
  static const MaterialColor pink = MaterialColor(
    0xFFd73a49,
    <int, Color>{
      100: const Color(0xFFffeef8),
      200: const Color(0xFFfedbf0),
      300: const Color(0xFFf9b3dd),
      400: const Color(0xFFf692ce),
      500: const Color(0xFFec6cb9),
      600: const Color(0xFFea4aaa),
      700: const Color(0xFFd03592),
      800: const Color(0xFFb93a86),
      900: const Color(0xFF99306f),
      1000: const Color(0xFF6d224f),
    },
  );

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  /// Text Colors [Grays]
  static Color textPrimary = gray;
  static Color? textSecondary = gray[700];
  static Color? textTertiary = gray[600];
  static Color? textPlaceholder = gray[600];
  static Color? textDisabled = gray[500];

  /// Text Colors [Other]
  static Color? textLink = blue[600];
  static Color? textDanger = red[700];
  static Color? textSuccess = green[700];
  static Color? textWarning = yellow[900];

  /// Icon Colors
  static Color iconPrimary = gray;
  static Color? iconSecondary = gray[700];
  static Color? iconTertiary = gray[600];
  static Color? iconInfo = blue[600];
  static Color? iconDanger = red[600];
  static Color? iconSuccess = green[700];
  static Color? iconWarning = yellow[900];

  /// Border Colors
  static Color? borderPrimary = gray[200];
  static Color borderSecondary = Color(0xFFeaecef);
  static Color? borderTertiary = gray[200];
  static Color? borderOverlay = gray[300];
  static Color borderInverse = white;
  static Color? borderInfo = blue[600];
  static Color? borderDanger = red[600];
  static Color? borderSuccess = green[500];
  static Color? borderWarning = yellow[700];

  /// Background Colors
  static Color bgCanvas = white;
  static Color bgCanvasMobile = white;
  static Color bgInverse = gray;
  static Color? bgInset = gray[200];
  static Color bgPrimary = white;
  static Color? bgSecondary = gray[100];
  static Color? bgTertiary = gray[200];
  static Color bgOverlay = white;
  static Color bgBackdrop = Color.fromRGBO(27, 31, 35, 0.5);
  static Color bgInfo = Color(0xFFf1f8ff);
  static Color? bgInfoInverse = blue[600];
  static Color bgDanger = Color(0xFFffeef0);
  static Color? bgDangerInverse = red[600];
  static Color bgSuccess = Color(0xFFdcffe4);
  static Color? bgSuccessInverse = green[600];
  static Color bgWarning = Color(0xFFfff5b1);
  static Color? bgWarningInverse = yellow[500];

  static var colorScheme = ColorScheme.light(
    /// My favorite color :)
    primary: blue,
    primaryVariant: blue[400]!,
    secondary: gray[300]!,
    secondaryVariant: gray[700]!,
    background: bgPrimary,
    surface: yellow,
    error: red[700]!,
    onPrimary: white,
    onSecondary: gray[200]!,
    onBackground: black,
    onSurface: yellow[100]!,
    onError: red[100]!,
  );
}

/// Old color theme, soon to be deleted.
const MaterialColor cantonPrimary = MaterialColor(
  0xFF1C54FF,
  <int, Color>{
    100: Color(0xFFF2F6FF),
    200: Color(0xFFD9E4FF),
    300: Color(0xFFA6C1FF),
    400: Color(0xFF598BFF),
    500: Color(0xFF3366FF),
    600: Color(0xFF274BDB),
    700: Color(0xFF1A34B8),
    800: Color(0xFF102694),
    900: Color(0xFF091C7A),
  },
);

const MaterialColor cantonInfo = MaterialColor(
  0xFF0095FF,
  <int, Color>{
    100: Color(0xFFF2F8FF),
    200: Color(0xFFC7E2FF),
    300: Color(0xFF94CBFF),
    400: Color(0xFF42AAFF),
    500: Color(0xFF0095FF),
    600: Color(0xFF006FD6),
    700: Color(0xFF0057C2),
    800: Color(0xFF0041A8),
    900: Color(0xFF002885),
  },
);

const MaterialColor cantonDanger = MaterialColor(
  0xFFFC551E,
  <int, Color>{
    100: Color(0xFFFEE9D1),
    200: Color(0xFFFECEA4),
    300: Color(0xFFFEAC77),
    400: Color(0xFFFD8B55),
    500: Color(0xFFFC551E),
    600: Color(0xFFD83815),
    700: Color(0xFFB5200F),
    800: Color(0xFF920E09),
    900: Color(0xFF780509),
  },
);

const MaterialColor cantonDangerSecond = MaterialColor(
  0xFFFF3D71,
  <int, Color>{
    100: Color(0xFFFFF2F2),
    200: Color(0xFFFFD6D9),
    300: Color(0xFFFFA8B4),
    400: Color(0xFFFF708D),
    500: Color(0xFFFF3D71),
    600: Color(0xFFDB2C66),
    700: Color(0xFFB81D5B),
    800: Color(0xFF94124E),
    900: Color(0xFF700940),
  },
);

const MaterialColor cantonSuccess = MaterialColor(
  0xFF00E096,
  <int, Color>{
    100: Color(0xFFEDFFF3),
    200: Color(0xFFB2FFD6),
    300: Color(0xFF8CFAC7),
    400: Color(0xFF51F0B0),
    500: Color(0xFF00E096),
    600: Color(0xFF00B283),
    700: Color(0xFF008F72),
    800: Color(0xFF007566),
    900: Color(0xFF00524C),
  },
);

const MaterialColor cantonWarning = MaterialColor(
  0xFFFFAA00,
  <int, Color>{
    100: Color(0xFFFFFDF2),
    200: Color(0xFFFFF1C2),
    300: Color(0xFFFFE59E),
    400: Color(0xFFFFC94D),
    500: Color(0xFFFFAA00),
    600: Color(0xFFDB8B00),
    700: Color(0xFFB86E00),
    800: Color(0xFF945400),
    900: Color(0xFF703C00),
  },
);

const MaterialColor cantonGrey = MaterialColor(
  0xFF16181C,
  <int, Color>{
    100: Color(0xFFF8F9FA),
    200: Color(0xFFEBEDEF),
    300: Color(0xFFDFE2E6),
    400: Color(0xFFD0D4D9),
    500: Color(0xFFAEB5BC),
    600: Color(0xFF878E95),
    700: Color(0xFF4A5056),
    800: Color(0xFF353A3F),
    900: Color(0xFF16181C),
  },
);

const MaterialColor cantonRed = MaterialColor(
  0xFFEF2323,
  <int, Color>{
    100: Color(0xFFFEE1D2),
    200: Color(0xFFFDBDA6),
    300: Color(0xFFFA907A),
    400: Color(0xFFF56558),
    500: Color(0xFFEF2323),
    600: Color(0xFFCD1929),
    700: Color(0xFFAC112C),
    800: Color(0xFF8A0B2C),
    900: Color(0xFF72062C),
  },
);

const MaterialColor cantonOrange = MaterialColor(
  0xFFF96611,
  <int, Color>{
    100: Color(0xFFFEECCF),
    200: Color(0xFFFED39F),
    300: Color(0xFFFDB46F),
    400: Color(0xFFFB964B),
    500: Color(0xFFF96611),
    600: Color(0xFFD6490C),
    700: Color(0xFFB33208),
    800: Color(0xFF901E05),
    900: Color(0xFF771103),
  },
);

const MaterialColor cantonYellow = MaterialColor(
  0xFFFFC300,
  <int, Color>{
    100: Color(0xFFFFF7CC),
    200: Color(0xFFFFEE99),
    300: Color(0xFFFFE266),
    400: Color(0xFFFFD63F),
    500: Color(0xFFFFC300),
    600: Color(0xFFDBA200),
    700: Color(0xFFB78300),
    800: Color(0xFF936600),
    900: Color(0xFF7A5100),
  },
);

const MaterialColor cantonGreen = MaterialColor(
  0xFF49D850,
  <int, Color>{
    100: Color(0xFFE5FDDB),
    200: Color(0xFFC7FBB8),
    300: Color(0xFF9FF392),
    400: Color(0xFF79E774),
    500: Color(0xFF49D850),
    600: Color(0xFF35B947),
    700: Color(0xFF249B3F),
    800: Color(0xFF177D37),
    900: Color(0xFF0E6732),
  },
);

const MaterialColor cantonLightBlue = MaterialColor(
  0xFF6CD3E8,
  <int, Color>{
    100: Color(0xFFE2FDFA),
    200: Color(0xFFC6FCF9),
    300: Color(0xFFA8F6F8),
    400: Color(0xFF90E8F1),
    500: Color(0xFF6CD3E8),
    600: Color(0xFF4EA9C7),
    700: Color(0xFF3682A7),
    800: Color(0xFF225E86),
    900: Color(0xFF14446F),
  },
);

const MaterialColor cantonBlue = MaterialColor(
  0xFF0063E8,
  <int, Color>{
    100: Color(0xFFCBE9FD),
    200: Color(0xFF97CFFC),
    300: Color(0xFF63AFF8),
    400: Color(0xFF3C91F1),
    500: Color(0xFF0063E8),
    600: Color(0xFF004CC7),
    700: Color(0xFF0038A7),
    800: Color(0xFF002786),
    900: Color(0xFF001C6F),
  },
);

const MaterialColor cantonPurple = MaterialColor(
  0xFF9C00E8,
  <int, Color>{
    100: Color(0xFFFACBFD),
    200: Color(0xFFEF97FC),
    300: Color(0xFFDA63F8),
    400: Color(0xFFC13CF1),
    500: Color(0xFF9C00E8),
    600: Color(0xFF7900C7),
    700: Color(0xFF5A00A7),
    800: Color(0xFF400086),
    900: Color(0xFF2E006F),
  },
);

const MaterialColor cantonPink = MaterialColor(
  0xFFFF7EC2,
  <int, Color>{
    100: Color(0xFFFFE5E8),
    200: Color(0xFFFFCBD7),
    300: Color(0xFFFFB1CA),
    400: Color(0xFFFF9EC7),
    500: Color(0xFFFF7EC2),
    600: Color(0xFFDB5CAB),
    700: Color(0xFFB73F96),
    800: Color(0xFF932881),
    900: Color(0xFF7A1873),
  },
);

import 'package:fluent_ui/fluent_ui.dart';


class AppTypography {
  static const String primaryFontFamily = 'Roboto';

  static const TextStyle titleLarge = TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 64.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle title = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600, // SEMI BOLD equivalent
  );

  static const TextStyle body = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500, // MEDIUM equivalent
  );

  static const TextStyle caption = TextStyle(
    fontSize: 16.0,
  );
}

import 'package:fluent_ui/fluent_ui.dart';


class AppTypography {
  static const String primaryFontFamily = 'Roboto';

  static TextStyle titleLarge = const TextStyle(
    fontFamily: primaryFontFamily,
    fontSize: 64.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle title = const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600, // SEMI BOLD equivalent
  );

  static TextStyle body = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500, // MEDIUM equivalent
  );

  static TextStyle caption = const TextStyle(
    fontSize: 16.0,
  );
}

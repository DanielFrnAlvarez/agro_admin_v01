import 'package:agro_admin/config/theme/colors.dart';
import 'package:fluent_ui/fluent_ui.dart';


class AppTypography {
  static const String primaryFontFamily = 'Roboto';

  static TextStyle titleLarge = TextStyle(
    color: appColorMap['primary'],
    fontFamily: primaryFontFamily,
    fontSize: 64.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle title = TextStyle(
    color: appColorMap['primary'],
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitle = TextStyle(
    color: appColorMap['primary'],
    fontSize: 24.0,
    fontWeight: FontWeight.w600, // SEMI BOLD equivalent
  );

  static TextStyle body = TextStyle(
    color: appColorMap['primary'],
    fontSize: 18.0,
    fontWeight: FontWeight.w500, // MEDIUM equivalent
  );

  static TextStyle caption = TextStyle(
    color: appColorMap['primary'],
    fontSize: 16.0,
  );
}

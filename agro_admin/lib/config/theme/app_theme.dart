import 'package:agro_admin/config/theme/colors.dart';
import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AppTheme {
  final bool isDarkMode;

  AppTheme({
    this.isDarkMode = true,
  });

  final Color primaryColor = appColorMap['primary'] ?? appDefaultColor;

  FluentThemeData getTheme() => FluentThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor:
            isDarkMode ? appColorMap['darkGray'] : appColorMap['white'],
        accentColor: AccentColor.swatch({
          'normal': primaryColor,
          'lighter': primaryColor.withOpacity(0.7),
          'light': primaryColor.withOpacity(0.5),
          'dark': primaryColor.withOpacity(0.9),
          'darker': primaryColor.withOpacity(1.0),
        }),
        activeColor: primaryColor,
        fontFamily: AppTypography.primaryFontFamily,
        typography: Typography.raw(
          titleLarge: AppTypography.titleLarge,
          title: AppTypography.title,
          subtitle: AppTypography.subtitle,
          body: AppTypography.body.copyWith(color: primaryColor),
          caption: AppTypography.caption,
        ),
      );

  AppTheme copyWith({
    bool? isDarkMode,
  }) =>
      AppTheme(
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}

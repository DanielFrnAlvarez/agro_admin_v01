import 'package:agro_admin/config/theme/colors.dart';
import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AppTheme {
  final bool isDarkMode;
  final Color primaryColor;

  AppTheme({
    this.isDarkMode = false,
    required this.primaryColor,
  });

  FluentThemeData getTheme({bool isDark = false}) => FluentThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor:
            isDark ? appColorMap['darkGray'] : appColorMap['white'],
        accentColor: defineThemeModeColor(),
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

  AccentColor defineThemeModeColor() {

    return AccentColor.swatch({
        'normal': primaryColor,
        'lighter': primaryColor.withOpacity(0.7),
        'light': primaryColor.withOpacity(0.5),
        'dark': primaryColor.withOpacity(0.9),
        'darker': primaryColor.withOpacity(1.0),
      });
  }

  AppTheme copyWith({
    bool? isDarkMode,
    required Color primaryColor,
  }) =>
      AppTheme(
        isDarkMode: isDarkMode ?? this.isDarkMode,
        primaryColor: primaryColor,
      );
}

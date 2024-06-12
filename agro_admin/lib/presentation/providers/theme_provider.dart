import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/config/theme/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final selectedColorProvider = StateProvider<int>((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

final primaryColorLight = appColorMap['primaryLight']!;
final primaryColorDark = appColorMap['primaryDark']!;

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme(primaryColor: primaryColorDark));

  void changeThemeMode() {
    final isDarkMode = !state.isDarkMode;
    final primaryColor = isDarkMode ? primaryColorLight: primaryColorDark; 
    state = state.copyWith(
      isDarkMode: isDarkMode,
      primaryColor: primaryColor);
  }
}

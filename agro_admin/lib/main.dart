import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';
import 'package:agro_admin/presentation/screens/login/login_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MainApp())
  );
}

class MainApp extends ConsumerWidget  {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return FluentApp(
      debugShowCheckedModeBanner: false,
      themeMode: appTheme.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: appTheme.getTheme(),
      home: const ScaffoldPage(
        padding: EdgeInsets.zero,
        content: Center(
          child: LoginScreen(),
        ),
      ),
    );
  }
}

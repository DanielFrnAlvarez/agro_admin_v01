import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:agro_admin/config/router/app_router.dart';
import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';

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

    return FluentApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      themeMode: appTheme.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: appTheme.getTheme(),
      darkTheme: appTheme.getTheme(isDark: true), 
    );
  }
}

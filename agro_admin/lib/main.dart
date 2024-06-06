import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'package:agro_admin/config/router/app_router.dart';
import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1440, 900),
    center: true,
    backgroundColor: Colors.transparent,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
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

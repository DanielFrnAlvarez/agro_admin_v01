import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';

class ChangeThemeDarkLight extends ConsumerWidget {
  const ChangeThemeDarkLight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    void changeThemeMode() =>
        ref.read(themeNotifierProvider.notifier).changeThemeMode();

    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          icon: Icon(
            isDarkMode ? FluentIcons.light : FluentIcons.clear_night,
            size: 24.0,
          ),
          onPressed: () => changeThemeMode(),
        ),
      ),
    );
  }
}

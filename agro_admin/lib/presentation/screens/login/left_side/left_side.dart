import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/config/theme/colors.dart';
import 'package:agro_admin/config/theme/typography.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeftSide extends ConsumerWidget {
  const LeftSide({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Container(
      color: isDarkMode
          ? appColorMap['primaryLight']
          : appColorMap['primaryDark'],
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image(
              width: 250,
              height: 250,
              image: AssetImage(
                  'assets/images/${isDarkMode ? 'app_logo_dark.png' : 'app_logo.png'}'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'AgroAdmin',
              style: AppTypography.titleLarge.copyWith(
                  color: isDarkMode
                      ? appColorMap['darkGray']
                      : appColorMap['white']),
            ),
          ],
        ),
      ),
    );
  }
}

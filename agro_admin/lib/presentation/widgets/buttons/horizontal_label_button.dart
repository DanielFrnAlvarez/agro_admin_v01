import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalLabelButton extends ConsumerWidget {
  const HorizontalLabelButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return Row(
      children: [
        Text(label),
        const SizedBox(width: 10.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: HoverButton(
            onPressed: onPressed,
            builder: (context, states) {
              Color buttonColor = appTheme.primaryColor;
              if (states.isHovering) {
                buttonColor = appTheme.primaryColor.withOpacity(0.8);
              } else if (states.isPressing) {
                buttonColor = appTheme.primaryColor.withOpacity(0.6);
              }

              return Container(
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 12,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

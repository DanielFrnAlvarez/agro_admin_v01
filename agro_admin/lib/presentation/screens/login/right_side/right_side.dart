import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:agro_admin/config/theme/typography.dart';
import 'package:agro_admin/presentation/widgets/common/change_theme_dark_light.dart';

import 'widgets/login_input.dart';
import 'widgets/remember_me_check_box.dart';

class RightSide extends ConsumerWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ChangeThemeDarkLight(),
          const SizedBox(height: 50),
          Text('Bienvenido', style: AppTypography.titleLarge),
          const SizedBox(height: 100),
          Center(
            child: SizedBox(
              width: 350.0, // Set fixed width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Iniciar sesión', style: AppTypography.title),
                  const SizedBox(height: 90),
                  const LoginInput('Usuario', false),
                  const SizedBox(height: 70),
                  const LoginInput('Contraseña', true),
                  const SizedBox(height: 20),
                  const RemindMeCheckBox(),
                  const SizedBox(height: 70),
                  FilledButton(
                      child: const Text(
                        'Iniciar sesión',
                      ),
                      onPressed: () => context.push('/'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

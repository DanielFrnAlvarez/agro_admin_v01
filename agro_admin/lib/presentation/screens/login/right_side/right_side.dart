import 'package:agro_admin/config/theme/colors.dart';
import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'widgets/login_input.dart';
import 'widgets/remember_me_check_box.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  style: ButtonStyle(backgroundColor: ButtonState.all(appColorMap['primary'])),
                  child: const Text(
                    'Iniciar sesión',
                  ),
                  onPressed: () => debugPrint('pressed button'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

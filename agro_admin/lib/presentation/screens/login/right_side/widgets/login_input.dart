import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LoginInput extends StatelessWidget {
  final String inputLabel;
  final bool isPasswordInput;

  const LoginInput(this.inputLabel, this.isPasswordInput, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(inputLabel, style: AppTypography.subtitle),
        const SizedBox(height: 20),
        isPasswordInput
            ? PasswordBox(
                // decoration: BoxDecoration(color: appColorMap['white']),
                onChanged: (value) => {},
              )
            : TextBox(
                // decoration: BoxDecoration(color: appColorMap['white']),
                onChanged: (value) => {},
              ),
      ],
    );
  }
}

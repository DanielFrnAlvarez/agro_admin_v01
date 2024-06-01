import 'package:agro_admin/config/theme/colors.dart';
import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

class RemindMeCheckBox extends StatefulWidget {
  const RemindMeCheckBox({
    super.key,
  });

  @override
  State<RemindMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RemindMeCheckBox> {
  bool remindMeCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          style: CheckboxThemeData(
            uncheckedDecoration: ButtonState.all(BoxDecoration(
                border: Border.all(color: appColorMap['secondary']!),
                borderRadius: BorderRadius.circular(6))),
          ),
          checked: remindMeCheckbox,
          onChanged: (value) => setState(() {
            remindMeCheckbox = value!;
          }),
        ),
        const SizedBox(width: 10),
        const Text('Guardar sesión', style: AppTypography.caption),
      ],
    );
  }
}

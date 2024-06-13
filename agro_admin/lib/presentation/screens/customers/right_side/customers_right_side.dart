import 'package:agro_admin/config/theme/typography.dart';
import 'package:agro_admin/presentation/widgets/buttons/horizontal_label_button.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CustomersRightSide extends StatelessWidget {
  const CustomersRightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align( // Wrap the content with Align for left-alignment
            alignment: Alignment.topLeft, // Align to top-left
            child: Column( // Inner column for vertical layout
              crossAxisAlignment: CrossAxisAlignment.start, // Left-align children
              children: [
                Text('Clientes', style: AppTypography.title),
                const SizedBox(height: 8),
                HorizontalLabelButton(
                  label: 'Agregar cliente',
                  icon: FluentIcons.add,
                  onPressed: () {},
                ),
                const SizedBox(height: 18),
                HorizontalLabelButton(
                  label: 'Ver todos los clientes',
                  icon: FluentIcons.view_list,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

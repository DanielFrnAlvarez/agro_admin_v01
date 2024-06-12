import 'package:agro_admin/presentation/widgets/menu/side_menu.dart';
import 'package:fluent_ui/fluent_ui.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  static const String name = 'base_screen';

  @override
  Widget build(BuildContext context) {

    return const ScaffoldPage(
      padding: EdgeInsets.all(0),
      content: SideMenu()
    );
  }
}
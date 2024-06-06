import 'package:fluent_ui/fluent_ui.dart';

import 'package:agro_admin/presentation/widgets/menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String name = 'main_screen';

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: SideMenu(),
    );
  }
}
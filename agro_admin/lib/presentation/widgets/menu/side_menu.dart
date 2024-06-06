import 'package:fluent_ui/fluent_ui.dart';

import 'package:agro_admin/config/menu/app_menu_items.dart';
import 'package:agro_admin/presentation/widgets/change_theme_dark_light.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  static const String name = 'side_menu';

  @override
  SideMenuState createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  int topIndex = 0;
  PaneDisplayMode displayMode = PaneDisplayMode.open;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: const EdgeInsets.all(0),
      content: NavigationView(
        appBar: const NavigationAppBar(
          title: Text('AgroAdmin Dashboard'),
          actions: ChangeThemeDarkLight(),
        ),
        pane: NavigationPane(
          selected: topIndex,
          onChanged: (index) {
            setState(() => topIndex = index);
            Navigator.pop(context);
          },
          displayMode: displayMode,
          items: appMenuItems
        ),
      ),
    );
  }
}

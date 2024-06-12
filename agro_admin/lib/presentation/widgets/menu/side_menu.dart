import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'package:agro_admin/config/menu/app_menu_items.dart';
import 'package:agro_admin/presentation/widgets/common/change_theme_dark_light.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  static const String name = 'side_menu';

  @override
  SideMenuState createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  int topIndex = 0;
  PaneDisplayMode displayMode = PaneDisplayMode.compact;

  @override
  Widget build(BuildContext context) {
    final List<PaneItem> navigationItems = appMenuItems.map((item) {
      return PaneItem(
        icon: Icon(item.icon),
        title: Text(item.title),
        body: item.body,
      );
    }).toList();
    return ScaffoldPage(
      padding: const EdgeInsets.all(0),
      content: NavigationView(
        appBar: NavigationAppBar(
          title: Text(
            'AgroAdmin Dashboard',
            style: AppTypography.subtitle,
          ),
          actions: const ChangeThemeDarkLight(),
        ),
        pane: NavigationPane(
            selected: topIndex,
            onChanged: (index) {
              setState(() => topIndex = index);
            },
            displayMode: displayMode,
            items: navigationItems.cast<NavigationPaneItem>()),
      ),
    );
  }
}

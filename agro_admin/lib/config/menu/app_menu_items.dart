import 'package:agro_admin/presentation/screens/screens.dart';
import 'package:fluent_ui/fluent_ui.dart';

final appMenuItems = <NavigationPaneItem>[
  PaneItem(
    icon: const Icon(FluentIcons.view_dashboard),
    title: const Text('Dashboard'),
    body: const DashboardScreen()
  ),
  PaneItemSeparator(),
  PaneItem(
    icon: const Icon(FluentIcons.accept_medium),
    title: const Text('Other screen'),
    body: Container(
      color: Colors.red,
    )
  ),
  PaneItem(
    icon: const Icon(FluentIcons.view_dashboard),
    title: const Text('Dashboard'),
    body: const Placeholder()
  ),
];
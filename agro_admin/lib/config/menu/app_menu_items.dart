import 'package:agro_admin/presentation/screens/customers/customers_screen.dart';
import 'package:agro_admin/presentation/screens/screens.dart';
import 'package:fluent_ui/fluent_ui.dart';

class MenuItem{

  final String title;
  final Widget body;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.body, 
    required this.icon
  });

}

const appMenuItems = <MenuItem>{
  MenuItem(
    title: 'Dashboard',
    body: DashboardScreen(),
    icon: FluentIcons.view_dashboard,
  ),
  MenuItem(
    title: 'Customers',
    body: CustomersScreen(),
    icon: FluentIcons.contact_list,
  ),
};
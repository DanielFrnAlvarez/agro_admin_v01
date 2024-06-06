import 'package:fluent_ui/fluent_ui.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const String name = 'dasboard_screen';

  @override
  Widget build(BuildContext context) {

    return const ScaffoldPage(
      padding: EdgeInsets.all(0),
      content: Placeholder()
    );
  }
}
import 'package:fluent_ui/fluent_ui.dart';

import 'package:agro_admin/presentation/screens/login/left_side/login_left_side.dart';
import 'package:agro_admin/presentation/screens/login/right_side/login_right_side.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String name = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Center(
        child: Flex(
          crossAxisAlignment: CrossAxisAlignment.start,
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: LoginLeftSide(),
            ),
            Expanded(
              child: LoginRightSide(),
            ),
          ],
        ),
      ),
    );
  }
}

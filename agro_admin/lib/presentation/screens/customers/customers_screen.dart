import 'package:agro_admin/presentation/screens/customers/left_side/customers_left_side.dart';
import 'package:agro_admin/presentation/screens/customers/right_side/customers_right_side.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      padding: EdgeInsets.zero, // Set padding to zero for full-screen usage
      content: Column( // Use Column for vertical layout
        children: [
          Flexible( // Make the child content flexible
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 4,
                  child: CustomersLeftSide(),
                ),
                Flexible(
                  flex: 6,
                  child: CustomersRightSide(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

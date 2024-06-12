import 'package:agro_admin/presentation/screens/customers/left_side/customers_left_side.dart';
import 'package:agro_admin/presentation/screens/customers/right_side/customers_right_side.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> headers = ['Customer Name', 'Contact Number', 'Total Debt'];
    final List<List<String>> rows = [
      ['John Doe', '123-456-7890', '\$1500'],
      ['Jane Smith', '098-765-4321', '\$2500'],
    ];

    return const ScaffoldPage(
      padding: EdgeInsets.all(0),
      content: Center(
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
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
      ),
    );
  }
}

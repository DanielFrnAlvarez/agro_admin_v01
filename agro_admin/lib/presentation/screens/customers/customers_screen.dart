import 'package:fluent_ui/fluent_ui.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: const EdgeInsets.all(0),
      content: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: Text('Customer Name', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text('Contact Number', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text('Total Debt', style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView(
                children: [
                  TableRow(
                    cells: [
                      TableCell(child: Text('John Doe John Doe John Doe John Doe John Doe John Doe John Doe John Doe')),
                      TableCell(child: Text('123-456-7890')),
                      TableCell(child: Text('\$1500')),
                    ],
                  ),
                  TableRow(
                    cells: [
                      TableCell(child: Text('Jane Smith')),
                      TableCell(child: Text('098-765-4321')),
                      TableCell(child: Text('\$2500')),
                    ],
                  ),
                  // Add more TableRows here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TableRow extends StatelessWidget {
  final List<TableCell> cells;

  const TableRow({required this.cells, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: cells.map((cell) => Expanded(child: cell.child)).toList(),
    );
  }
}

class TableCell extends StatelessWidget {
  final Widget child;

  const TableCell({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}

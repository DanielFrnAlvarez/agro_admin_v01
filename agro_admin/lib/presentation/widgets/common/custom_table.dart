import 'package:fluent_ui/fluent_ui.dart';

class CustomTable extends StatelessWidget {
  final List<String> headers;
  final List<List<String>> rows;

  const CustomTable({
    required this.headers,
    required this.rows,
    super.key,
  });
// TODO DOCUMENTAR ESTE COMPONENTE

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: headers.map((header) => Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                header,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )).toList(),
        ),
        const Divider(),
        ...rows.map((row) => Row(
          children: row.map((cell) => Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(cell),
            ),
          )).toList(),
        )),
      ],
    );
  }
}

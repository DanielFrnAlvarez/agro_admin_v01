import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CustomTable extends StatelessWidget {
  final List<String> headers;
  final List<List<String>> rows;
  final String? tableTitleText; // Optional table title

  const CustomTable({
    required this.headers,
    required this.rows,
    this.tableTitleText,
    super.key,
  });
// TODO hacer la documentacion respectiva
  @override
  Widget build(BuildContext context) {
    final int expectedLength = headers.length;

    // Validate row lengths
    if (rows.any((row) => row.length != expectedLength)) {
      return Text(
        'Error: Row lengths must match header count = ($expectedLength)',
        style: TextStyle(color: Colors.red, fontSize: 16.0),
      );
    }
    return Column(
      children: [
        if (tableTitleText != null) // Check if tableTitle is provided
          Align(
            alignment: Alignment.topLeft, // Left-align the title
            child: _TableTitle(tableTitleText: tableTitleText),
          ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: headers
              .map((header) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        header,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
              .toList(),
        ),
        const Divider(),
        ...rows.map((row) => Row(
              children: row
                  .map((cell) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cell),
                        ),
                      ))
                  .toList(),
            )),
      ],
    );
  }
}

class _TableTitle extends StatelessWidget {
  const _TableTitle({
    required this.tableTitleText,
  });

  final String? tableTitleText;

  @override
  Widget build(BuildContext context) {
    return Text(
      tableTitleText!,
      style: AppTypography.title, // Adjust styling as needed
    );
  }
}

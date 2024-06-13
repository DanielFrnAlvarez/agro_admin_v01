import 'package:agro_admin/config/theme/app_theme.dart';
import 'package:agro_admin/presentation/providers/theme_provider.dart';
import 'package:agro_admin/presentation/widgets/common/custom_table.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomersLeftSide extends ConsumerWidget {
  const CustomersLeftSide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    final List<String> headers = ['Customer Name', 'Total Debt'];
    final List<List<String>> rows = [
      ['John Doe', '\$1500'],
      ['Jane Smith', '\$2500'],
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1.0, color: appTheme.primaryColor)),
        ),
          child: CustomTable(
              tableTitleText: 'Deudores', headers: headers, rows: rows)),
    );
  }
}

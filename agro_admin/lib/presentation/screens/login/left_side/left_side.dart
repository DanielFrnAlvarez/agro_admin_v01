import 'package:agro_admin/config/theme/colors.dart';
import 'package:agro_admin/config/theme/typography.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColorMap['primary'],
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Image(
              width: 250,
              height: 250,
              image: AssetImage('assets/images/app_logo.png'),
            ),
            const SizedBox(height: 30,),
            Text(
              'AgroAdmin',
              style: AppTypography.titleLarge
                  .copyWith(color: appColorMap['white']),
            ),
          ],
        ),
      ),
    );
  }
}

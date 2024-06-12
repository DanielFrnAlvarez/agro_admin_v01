import 'package:go_router/go_router.dart';
import 'package:agro_admin/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      name: BaseScreen.name,
      builder: (context, state) => const BaseScreen(),
    )
  ]
);
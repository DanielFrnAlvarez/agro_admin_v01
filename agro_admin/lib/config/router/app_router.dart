import 'package:agro_admin/presentation/screens/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:agro_admin/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      name: MainScreen.name,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/dashboard_screen',
      name: DashboardScreen.name,
      builder: (context, state) => const DashboardScreen(),
    )
  ]
);
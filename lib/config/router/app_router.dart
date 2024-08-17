import 'package:go_router/go_router.dart';
import 'package:noesis_theme/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: "/",
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: "/theme-settings",
      name: ThemeSettingsScreen.name,
      builder: (context, state) => const ThemeSettingsScreen()),
]);

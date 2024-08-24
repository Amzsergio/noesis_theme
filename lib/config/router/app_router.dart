import 'package:go_router/go_router.dart';
import 'package:noesis_theme/presentation/screens/screens.dart';
import 'package:noesis_theme/presentation/screens/theme/theme_color_settings.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: "/",
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()),

  //Theme Setting Routes
  GoRoute(
      path: "/theme-settings",
      name: ThemeSettingsScreen.name,
      builder: (context, state) => const ThemeSettingsScreen()),
  GoRoute(
      path: "/theme-color-settings",
      name: ThemeColorScreen.name,
      builder: (context, state) => const ThemeColorScreen()),
]);

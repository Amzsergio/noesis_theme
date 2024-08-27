import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noesis_theme/config/router/app_router.dart';
import 'package:noesis_theme/config/theme/app_theme.dart';
import 'package:noesis_theme/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(selectedColorProvider);
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isDarkmode: isDarkmode)
          .getTheme(),
      routerConfig: appRouter,
    );
  }
}

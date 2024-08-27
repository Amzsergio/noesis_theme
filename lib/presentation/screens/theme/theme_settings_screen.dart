import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noesis_theme/config/menu/theme_menu/theme_menu.dart';
import 'package:noesis_theme/presentation/providers/theme_provider.dart';
import 'package:noesis_theme/presentation/widgets/custom_list_tile_widget.dart';

class ThemeSettingsScreen extends ConsumerWidget {
  const ThemeSettingsScreen({super.key});
  static const String name = 'theme-settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Settings"),
        actions: [
          IconButton(
            icon: Icon(isDarkmode ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            },
          )
        ],
      ),
      body: const _ThemeScreen(),
    );
  }
}

class _ThemeScreen extends StatelessWidget {
  const _ThemeScreen();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: themeMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = themeMenuItems[index];
        return CustomListTileWidget(menuItem: menuItem);
      },
    );
  }
}

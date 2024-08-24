import 'package:flutter/material.dart';
import 'package:noesis_theme/config/menu/theme_menu/theme_menu.dart';
import 'package:noesis_theme/presentation/widgets/custom_list_tile_widget.dart';

class ThemeSettingsScreen extends StatelessWidget {
  const ThemeSettingsScreen({super.key});
  static const String name = 'theme-settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Settings"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode))
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

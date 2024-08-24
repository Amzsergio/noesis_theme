import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noesis_theme/config/menu/menu.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: Colors.cyan,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}

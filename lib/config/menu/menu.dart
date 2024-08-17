import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const List<MenuItem> appMenuItems = <MenuItem>[
  MenuItem(
    title: "Theme Settings",
    subTitle: "Elige tu tema favorito",
    link: "/theme-settings",
    icon: Icons.brush_rounded,
  )
];

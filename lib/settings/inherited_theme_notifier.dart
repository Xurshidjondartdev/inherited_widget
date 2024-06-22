import 'package:flutter/material.dart';
import 'package:inherited_widget/settings/inherited_theme_controller.dart';

class InheritedThemeNotifier extends InheritedWidget {
  const InheritedThemeNotifier({
    super.key,
    required super.child,
    required this.inheritedThemeController,
  });

  final InheritedThemeController inheritedThemeController;

  static InheritedThemeNotifier? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedThemeNotifier>();
  }

  @override
  bool updateShouldNotify(InheritedThemeNotifier oldWidget) {
    return oldWidget.inheritedThemeController.theme !=
        inheritedThemeController.theme;
  }
}

import 'package:flutter/material.dart';
import 'package:inherited_widget/app.dart';
import 'package:inherited_widget/settings/inherited_theme_controller.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => InheritedThemeController(),
      child: const MyApp(),
    ),
  );
}

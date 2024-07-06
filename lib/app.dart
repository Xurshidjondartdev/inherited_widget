import 'package:flutter/material.dart';
import 'package:inherited_widget/login.dart';
// import 'package:inherited_widget/screens/home_page.dart';
import 'package:inherited_widget/settings/inherited_theme_controller.dart';
import 'package:inherited_widget/settings/inherited_theme_notifier.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  InheritedThemeController inheritedThemeController =
      InheritedThemeController();

  @override
  Widget build(BuildContext context) {
    return InheritedThemeNotifier(
      inheritedThemeController: inheritedThemeController,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}

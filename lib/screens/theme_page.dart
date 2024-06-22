import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:inherited_widget/settings/inherited_theme_controller.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InheritedThemeController>(
      builder: (context, ref, child) {
        return Scaffold(
          backgroundColor: ref.theme,
          appBar: AppBar(
            automaticallyImplyLeading:false,
            backgroundColor:ref.theme,
            centerTitle: true,
            title: const Text(
              'Theme',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      ref.ligthTheme();
                      log('message');
                    },
                    icon: const Icon(Icons.light_mode, color: Colors.white),
                  ),
                  const SizedBox(width: 30),
                  IconButton(
                    onPressed: () {
                      ref.dartTheme();
                      log('message');
                    },
                    icon: const Icon(Icons.dark_mode_outlined,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          )),
        );
      },
    );
  }
}

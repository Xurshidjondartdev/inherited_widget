import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inherited_widget/screens/theme_page.dart';
import 'package:inherited_widget/settings/inherited_theme_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InheritedThemeController>(builder: (context, ref, child) {
      return Scaffold(
        backgroundColor: ref.theme,
        appBar: AppBar(
          backgroundColor: ref.theme,
          centerTitle: true,
          title: const Text(
            'HomePage',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ThemePage()));
              },
              child: const Text('go to next page'),
            ),
          ],
        )),
      );
    });
  }
}

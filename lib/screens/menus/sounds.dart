import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/screens/menus/simple_sounds.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class SoundsMenuScreen extends StatelessWidget {
  const SoundsMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sons'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuButtonWidget(
            caption: 'Simples',
            soundAssetPath: 'assets/sounds/simple.mp3',
            onNavigation: () {
              goToPage(const SimpleSoundsMenuScreen(), context);
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Complexes',
            soundAssetPath: 'assets/sounds/complexe.mp3',
            onNavigation: () {},
          ),
        ],
      ),
    );
  }
}
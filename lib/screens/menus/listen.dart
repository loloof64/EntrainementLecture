import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/screens/menus/alphabet.dart';
import 'package:entrainement_lecture/screens/menus/sounds.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class ListenMenuScreen extends StatelessWidget {
  const ListenMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ecouter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuButtonWidget(
            caption: 'Alphabet',
            soundAssetPath: 'assets/sounds/alphabet.mp3',
            onNavigation: () {
              goToPage(const AlphabetMenuScreen(), context);
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Sons',
            soundAssetPath: 'assets/sounds/son.mp3',
            onNavigation: () {
              goToPage(const SoundsMenuScreen(), context);
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Mots',
            soundAssetPath: 'assets/sounds/mot.mp3',
            onNavigation: () {},
          ),
        ],
      ),
    );
  }
}

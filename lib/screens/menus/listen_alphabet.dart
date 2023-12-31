import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/screens/listening/consons.dart';
import 'package:entrainement_lecture/screens/listening/voyels.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class ListenAlphabetMenuScreen extends StatelessWidget {
  const ListenAlphabetMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ecouter l\'alphabet'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuButtonWidget(
            caption: 'Voyelles',
            soundAssetPath: 'assets/sounds/voyelle.mp3',
            onNavigation: () {
              goToPage(
                const VoyelsListeningScreen(),
                context,
              );
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Consonnes',
            soundAssetPath: 'assets/sounds/consonne.mp3',
            onNavigation: () {
              goToPage(
                const ConsonsListeningScreen(),
                context,
              );
            },
          ),
        ],
      ),
    );
  }
}

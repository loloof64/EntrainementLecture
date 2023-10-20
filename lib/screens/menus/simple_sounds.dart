import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/screens/listening/simple_sound.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class SimpleSoundsMenuScreen extends StatelessWidget {
  const SimpleSoundsMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];

    for (var sound in simpleSounds.keys) {
      children.add(
        MenuButtonWidget(
          horizontalLayout: false,
          caption: sound,
          soundAssetPath: simpleSounds[sound]!['base_sound'],
          onNavigation: () => goToPage(
            SimpleSoundListeningScreen(
              soundElement: sound,
              soundData: simpleSounds[sound]!,
            ),
            context,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ecouter les sons simples'),
      ),
      body: Center(
        child: Wrap(
          runSpacing: listeningButtonsGridVerticalGap,
          spacing: listeningButtonsGridHorizontalGap,
          children: children,
        ),
      ),
    );
  }
}

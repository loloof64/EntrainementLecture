import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/screens/listening/complex_sound.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class ComplexSoundsMenuScreen extends StatelessWidget {
  const ComplexSoundsMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];

    for (var sound in complexSounds.keys) {
      children.add(
        MenuButtonWidget(
          horizontalLayout: false,
          caption: sound,
          soundAssetPath: complexSounds[sound]!['base_sound'],
          onNavigation: () => goToPage(
            ComplexSoundListeningScreen(
              soundElement: sound,
              soundData: complexSounds[sound]!,
            ),
            context,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sons complexes'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            runSpacing: listeningButtonsGridVerticalGap,
            spacing: listeningButtonsGridHorizontalGap,
            children: children,
          ),
        ),
      ),
    );
  }
}

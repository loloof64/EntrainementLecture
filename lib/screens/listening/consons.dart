import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/widgets/listening_button.dart';
import 'package:flutter/material.dart';

class ConsonsListeningScreen extends StatelessWidget {
  const ConsonsListeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];

    for (var letter in consons.keys) {
      children.add(
        ListeningButtonWidget(
          caption: letter,
          soundAssetPath: consons[letter]!,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ecouter les consonnes'),
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

import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/widgets/listening_button.dart';
import 'package:flutter/material.dart';

class SimpleSoundListeningScreen extends StatelessWidget {
  final String soundElement;
  final Map<String, dynamic> soundData;
  const SimpleSoundListeningScreen({
    super.key,
    required this.soundElement,
    required this.soundData,
  });

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];

    final combinations =
        soundData['combinations'] as List<Map<String, dynamic>>;
    final variation = combinations[0];
    final base = variation['base'] ?? '';
    final associations = variation['associations'] ?? <String, String>{};

    for (var combination in associations.entries) {
      final combinationLetter = combination.key;
      final soundPath = combination.value;
      final caption = '$base$combinationLetter';
      children.add(
        ListeningButtonWidget(
          caption: caption,
          soundAssetPath: soundPath,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Ecouter le son simple $soundElement'),
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

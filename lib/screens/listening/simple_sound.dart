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

    final combinations = soundData['combinations'] as Map<String, String>;

    for (var combinationLetter in combinations.keys) {
      children.add(
        ListeningButtonWidget(
          caption: '$soundElement$combinationLetter',
          soundAssetPath: combinations[combinationLetter]!,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Son simple $soundElement'),
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

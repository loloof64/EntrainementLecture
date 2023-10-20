import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/widgets/listening_button.dart';
import 'package:flutter/material.dart';

class WordsListeningScreen extends StatelessWidget {
  const WordsListeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];

    for (var word in words.keys) {
      children.add(
        ListeningButtonWidget(
          caption: word,
          soundAssetPath: words[word]!,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mots'),
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

import 'package:entrainement_lecture/misc/commons.dart';
import 'package:flutter/material.dart';

class FindingSoundAnsweringZoneWidget extends StatelessWidget {
  /*
  Key is the caption.
  Value is true if and only if the possibility is a good option.
  */
  final Map<String, bool> possibilities;

  /*
  caption is the caption of the selected button.
  expectedAnswers is the list of possible answers.
  */
  final void Function(String caption, List<String> expectedAnswers)
      handleAnswer;

  const FindingSoundAnsweringZoneWidget({
    super.key,
    required this.possibilities,
    required this.handleAnswer,
  });

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    final expectedAnswers = possibilities.entries
        .where((element) => element.value)
        .map((element) => element.key)
        .toList();
    for (var caption in possibilities.keys) {
      children.add(ElevatedButton(
        onPressed: () => handleAnswer(caption, expectedAnswers),
        child: Text(caption),
      ));
    }

    return SingleChildScrollView(
      child: Wrap(
        runSpacing: listeningButtonsGridVerticalGap,
        spacing: listeningButtonsGridHorizontalGap,
        children: children,
      ),
    );
  }
}

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
  expectedAnswers is the expected answer.
  */
  final void Function(String caption, String expectedAnswer)
      handleAnswer;

  const FindingSoundAnsweringZoneWidget({
    super.key,
    required this.possibilities,
    required this.handleAnswer,
  });

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    final expectedAnswer = possibilities.entries
        .firstWhere((element) => element.value).key;
    for (var caption in possibilities.keys) {
      children.add(ElevatedButton(
        onPressed: () => handleAnswer(caption, expectedAnswer),
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

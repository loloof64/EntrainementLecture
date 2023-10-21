import 'package:entrainement_lecture/widgets/finding_sound_header.dart';
import 'package:entrainement_lecture/widgets/finding_sounds_answering_zone.dart';
import 'package:flutter/material.dart';

class FindingSoundWidget extends StatelessWidget {
  /* Path of the sound to play */
  final String soundToFindPath;

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

  const FindingSoundWidget({
    super.key,
    required this.soundToFindPath,
    required this.possibilities,
    required this.handleAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FindingSoundHeaderWidget(
            soundToFindPath: soundToFindPath,
          ),
          FindingSoundAnsweringZoneWidget(
            possibilities: possibilities,
            handleAnswer: handleAnswer,
          ),
        ],
      ),
    );
  }
}

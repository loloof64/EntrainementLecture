import 'package:entrainement_lecture/misc/sound_engine.dart';
import 'package:entrainement_lecture/widgets/finding_sound.dart';
import 'package:flutter/material.dart';

class ExercisePageWidget extends StatefulWidget {
  /* Path of the sound to play */
  final String soundToFindPath;

  /*
  Key is the caption.
  Value is true if and only if the possibility is a good option.
  */
  final Map<String, bool> possibilities;

  /*
  caption is the caption of the selected button.
  expectedAnswer is the expected answers.
  */
  final void Function(String caption, String expectedAnswer) handleAnswer;

  const ExercisePageWidget({
    super.key,
    required this.soundToFindPath,
    required this.possibilities,
    required this.handleAnswer,
  });

  @override
  State<ExercisePageWidget> createState() => _ExercisePageWidgetState();
}

class _ExercisePageWidgetState extends State<ExercisePageWidget> {
  @override
  void initState() {
    soundEngine.playSound(widget.soundToFindPath);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page d\'exercice'),
      ),
      body: FindingSoundWidget(
        soundToFindPath: widget.soundToFindPath,
        possibilities: widget.possibilities,
        handleAnswer: widget.handleAnswer,
      ),
    );
  }
}

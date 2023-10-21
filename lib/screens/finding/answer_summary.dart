import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/sound_engine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnswerSummaryScreenWidget extends StatefulWidget {
  final String userAnswer;
  final List<String> expectedAnswersChoices;
  final void Function() onNewExerciseRequest;

  const AnswerSummaryScreenWidget({
    super.key,
    required this.userAnswer,
    required this.expectedAnswersChoices,
    required this.onNewExerciseRequest,
  });

  @override
  State<AnswerSummaryScreenWidget> createState() => _AnswerSummaryScreenWidgetState();
}

class _AnswerSummaryScreenWidgetState extends State<AnswerSummaryScreenWidget> {
  @override
  void initState() {
    final hasFoundAnswer = widget.expectedAnswersChoices.contains(widget.userAnswer);
    if (hasFoundAnswer) {
      soundEngine.playSound('assets/sounds/bien_joué.mp3');
    }
    else {
      soundEngine.playSound('assets/sounds/c_incorrect.mp3');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hasFoundAnswer = widget.expectedAnswersChoices.contains(widget.userAnswer);
    final possibleAnswers = widget.expectedAnswersChoices.join(", ");
    final headerWidgetChildren = hasFoundAnswer
        ? const <Widget>[
            FaIcon(
              FontAwesomeIcons.circleCheck,
              color: Colors.green,
            ),
            Text('Bien joué'),
          ]
        : const <Widget>[
            FaIcon(
              FontAwesomeIcons.circleXmark,
              color: Colors.red,
            ),
            Text('C\'est incorrect'),
          ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Réponse'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: headerWidgetChildren,
            ),
            const SizedBox(
              height: menusVerticalGap,
            ),
            Text('Votre réponse : ${widget.userAnswer}'),
            const SizedBox(
              height: menusVerticalGap,
            ),
            Text('Réponse(s) attendue/possibles: $possibleAnswers'),
            const SizedBox(
              height: menusVerticalGap,
            ),
            ElevatedButton(
              onPressed: widget.onNewExerciseRequest,
              child: const Text('Nouvel exercise'),
            ),
          ],
        ),
      ),
    );
  }
}

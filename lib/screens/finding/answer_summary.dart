import 'package:entrainement_lecture/misc/sound_engine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnswerSummaryScreenWidget extends StatefulWidget {
  final String userAnswer;
  final String expectedAnswer;
  final void Function() onNewExerciseRequest;

  const AnswerSummaryScreenWidget({
    super.key,
    required this.userAnswer,
    required this.expectedAnswer,
    required this.onNewExerciseRequest,
  });

  @override
  State<AnswerSummaryScreenWidget> createState() =>
      _AnswerSummaryScreenWidgetState();
}

class _AnswerSummaryScreenWidgetState extends State<AnswerSummaryScreenWidget> {
  @override
  void initState() {
    final hasFoundAnswer = widget.expectedAnswer.contains(widget.userAnswer);
    if (hasFoundAnswer) {
      soundEngine.playSound('assets/sounds/bien_joué.mp3');
    } else {
      soundEngine.playSound('assets/sounds/c_incorrect.mp3');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hasFoundAnswer = widget.expectedAnswer.contains(widget.userAnswer);
    final answerWidgetChildren = hasFoundAnswer
        ? <Widget>[
            const FaIcon(
              FontAwesomeIcons.circleCheck,
              color: Colors.green,
            ),
            Text(widget.expectedAnswer),
          ]
        : <Widget>[
            const FaIcon(
              FontAwesomeIcons.circleXmark,
              color: Colors.red,
            ),
            Text(widget.userAnswer),
            const SizedBox(
              width: 10.0,
            ),
            const FaIcon(
              FontAwesomeIcons.circleCheck,
              color: Colors.green,
            ),
            Text(widget.expectedAnswer),
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
              children: answerWidgetChildren,
            ),
            const SizedBox(
              height: 20.0,
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

import 'package:entrainement_lecture/screens/finding/answer_summary.dart';
import 'package:flutter/material.dart';

const menusVerticalGap = 10.0;
const menuButtonHorizontalGap = 20.0;
const beautifulButtonRadius = 10.0;
const listeningButtonsGridHorizontalGap = 10.0;
const listeningButtonsGridVerticalGap = 10.0;

void goToPage(Widget screenWidget, BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx2) {
    return screenWidget;
  }));
}

void handleAnswer({
  required String userAnswer,
  required List<String> correctAnswers,
  required void Function() onNewExerciseRequest,
  required BuildContext context,
}) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (ctx2) {
      return AnswerSummaryScreenWidget(
        userAnswer: userAnswer,
        expectedAnswersChoices: correctAnswers,
        onNewExerciseRequest: onNewExerciseRequest,
      );
    }),
  );
}

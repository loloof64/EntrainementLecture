import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/generate_exercise.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/screens/exercise_page.dart';
import 'package:entrainement_lecture/screens/finding/answer_summary.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class FindAlphabetMenuScreen extends StatelessWidget {
  const FindAlphabetMenuScreen({super.key});

  Widget _generateVoyelsExercisePage(BuildContext context) {
    final exercise = generateExerciseForAlphabetOrWords(
        inputSounds: [voyels], purposesCount: 4);
    final destinationScreen = ExercisePageWidget(
      soundToFindPath: exercise.soundToFindPath,
      possibilities: exercise.possibilities,
      handleAnswer: (userAnswer, expectedAnswers) => handleAnswer(
        context: context,
        userAnswer: userAnswer,
        correctAnswers: expectedAnswers,
        onNewExerciseRequest: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx2) {
              return AnswerSummaryScreenWidget(
                userAnswer: userAnswer,
                expectedAnswersChoices: expectedAnswers,
                onNewExerciseRequest: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx2) => _generateVoyelsExercisePage(context),
                    ),
                  );
                },
              );
            }),
          );
        },
      ),
    );
    return destinationScreen;
  }

  Widget _generateConsonsExercisePage(BuildContext context) {
    final exercise = generateExerciseForAlphabetOrWords(
        inputSounds: [consons], purposesCount: 8);
    final destinationScreen = ExercisePageWidget(
      soundToFindPath: exercise.soundToFindPath,
      possibilities: exercise.possibilities,
      handleAnswer: (userAnswer, expectedAnswers) => handleAnswer(
        context: context,
        userAnswer: userAnswer,
        correctAnswers: expectedAnswers,
        onNewExerciseRequest: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx2) {
              return AnswerSummaryScreenWidget(
                userAnswer: userAnswer,
                expectedAnswersChoices: expectedAnswers,
                onNewExerciseRequest: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx2) => _generateConsonsExercisePage(context),
                    ),
                  );
                },
              );
            }),
          );
        },
      ),
    );
    return destinationScreen;
  }

  Widget _generateMixedAlphabetExercisePage(BuildContext context) {
    final exercise = generateExerciseForAlphabetOrWords(
        inputSounds: [consons, voyels], purposesCount: 10);
    final destinationScreen = ExercisePageWidget(
      soundToFindPath: exercise.soundToFindPath,
      possibilities: exercise.possibilities,
      handleAnswer: (userAnswer, expectedAnswers) => handleAnswer(
        context: context,
        userAnswer: userAnswer,
        correctAnswers: expectedAnswers,
        onNewExerciseRequest: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx2) {
              return AnswerSummaryScreenWidget(
                userAnswer: userAnswer,
                expectedAnswersChoices: expectedAnswers,
                onNewExerciseRequest: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx2) => _generateMixedAlphabetExercisePage(context),
                    ),
                  );
                },
              );
            }),
          );
        },
      ),
    );
    return destinationScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Trouver l\'alphabet'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuButtonWidget(
            caption: 'Voyelles',
            soundAssetPath: 'assets/sounds/voyelle.mp3',
            onNavigation: () {
              final destinationScreen = _generateVoyelsExercisePage(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => destinationScreen,
                ),
              );
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Consonnes',
            soundAssetPath: 'assets/sounds/consonne.mp3',
            onNavigation: () {
              final destinationScreen = _generateConsonsExercisePage(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => destinationScreen,
                ),
              );
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Mixtes',
            soundAssetPath: 'assets/sounds/mixte.mp3',
            onNavigation: () {
              final destinationScreen =
                  _generateMixedAlphabetExercisePage(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => destinationScreen,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

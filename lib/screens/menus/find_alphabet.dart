import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/generate_exercise.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/screens/finding/exercise_page.dart';
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
        handleAnswer: (userAnswer, expectedAnswer) => handleAnswer(
              context: context,
              userAnswer: userAnswer,
              correctAnswer: expectedAnswer,
              onNewExerciseRequest: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx2) => _generateVoyelsExercisePage(context),
                  ),
                );
              },
            ));
    return destinationScreen;
  }

  Widget _generateConsonsExercisePage(BuildContext context) {
    final exercise = generateExerciseForAlphabetOrWords(
        inputSounds: [consons], purposesCount: 8);
    final destinationScreen = ExercisePageWidget(
      soundToFindPath: exercise.soundToFindPath,
      possibilities: exercise.possibilities,
      handleAnswer: (userAnswer, expectedAnswer) => handleAnswer(
        context: context,
        userAnswer: userAnswer,
        correctAnswer: expectedAnswer,
        onNewExerciseRequest: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx2) => _generateConsonsExercisePage(context),
            ),
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
      handleAnswer: (userAnswer, expectedAnswer) => handleAnswer(
        context: context,
        userAnswer: userAnswer,
        correctAnswer: expectedAnswer,
        onNewExerciseRequest: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx2) => _generateMixedAlphabetExercisePage(context),
            ),
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => _generateVoyelsExercisePage(context),
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => _generateConsonsExercisePage(context),
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) =>
                      _generateMixedAlphabetExercisePage(context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

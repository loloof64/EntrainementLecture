import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/generate_exercise.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/screens/finding/exercise_page.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class FindSoundMenuScreen extends StatelessWidget {
  const FindSoundMenuScreen({super.key});

  Widget _generateSimpleSoundExercisePage(BuildContext context) {
    final exercise = generateExerciseForSyllabeSounds(
        inputSounds: [simpleSounds], purposesCount: 8);
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
                    builder: (ctx2) =>
                        _generateSimpleSoundExercisePage(context),
                  ),
                );
              },
            ));
    return destinationScreen;
  }

  Widget _generateComplexSoundExercisePage(BuildContext context) {
    final exercise = generateExerciseForSyllabeSounds(
        inputSounds: [complexSounds], purposesCount: 12);
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
                    builder: (ctx2) =>
                        _generateComplexSoundExercisePage(context),
                  ),
                );
              },
            ));
    return destinationScreen;
  }

  Widget _generateMixedSoundExercisePage(BuildContext context) {
    final exercise = generateExerciseForSyllabeSounds(
        inputSounds: [simpleSounds, complexSounds], purposesCount: 16);
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
                    builder: (ctx2) =>
                        _generateComplexSoundExercisePage(context),
                  ),
                );
              },
            ));
    return destinationScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Trouver le son'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuButtonWidget(
            caption: 'Simples',
            soundAssetPath: 'assets/sounds/simple.mp3',
            onNavigation: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => _generateSimpleSoundExercisePage(context),
                ),
              );
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Complexes',
            soundAssetPath: 'assets/sounds/complexe.mp3',
            onNavigation: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => _generateComplexSoundExercisePage(context),
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
                  builder: (ctx2) => _generateMixedSoundExercisePage(context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/misc/generate_exercise.dart';
import 'package:entrainement_lecture/misc/sound_mappings.dart';
import 'package:entrainement_lecture/screens/finding/exercise_page.dart';
import 'package:entrainement_lecture/screens/menus/find_alphabet.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class FindMenuScreen extends StatelessWidget {
  const FindMenuScreen({super.key});

  Widget _generateWordsExercisePage(BuildContext context) {
    final exercise = generateExerciseForAlphabetOrWords(
        inputSounds: [words], purposesCount: 15);
    final destinationScreen = ExercisePageWidget(
      soundToFindPath: exercise.soundToFindPath,
      possibilities: exercise.possibilities,
      handleAnswer: (userAnswer, expectedAnswers) => handleAnswer(
        context: context,
        userAnswer: userAnswer,
        correctAnswers: expectedAnswers,
        onNewExerciseRequest: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx2) => _generateWordsExercisePage(context),
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
        title: const Text('Trouver'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuButtonWidget(
            caption: 'Alphabet',
            soundAssetPath: 'assets/sounds/alphabet.mp3',
            onNavigation: () {
              goToPage(const FindAlphabetMenuScreen(), context);
            },
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Sons',
            soundAssetPath: 'assets/sounds/son.mp3',
            onNavigation: () {},
          ),
          const SizedBox(
            height: menusVerticalGap,
          ),
          MenuButtonWidget(
            caption: 'Mots',
            soundAssetPath: 'assets/sounds/mot.mp3',
            onNavigation: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx2) => _generateWordsExercisePage(context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

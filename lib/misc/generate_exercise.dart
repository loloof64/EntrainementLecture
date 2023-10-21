import 'dart:math';

class Exercise {
  /* Caption of the sound to find */
  final String soundToFindString;

  /* Path of the sound to play */
  final String soundToFindPath;

  /*
  Key is the caption.
  Value is true if and only if the possibility is a good option.
  */
  final Map<String, bool> possibilities;

  const Exercise({
    required this.soundToFindString,
    required this.soundToFindPath,
    required this.possibilities,
  });
}

Exercise generateExerciseForAlphabetOrWords({
  // Number of answerButtons to generate
  required int purposesCount,
  // Input sounds to choose in
  required List<Map<String, String>> inputSounds,
}) {
  Random random = Random();

  // merging all sounds into a single map
  var mergedInputSounds = <String, String>{};
  for (var inputs in inputSounds) {
    for (var soundCaption in inputs.keys) {
      mergedInputSounds[soundCaption] = inputs[soundCaption]!;
    }
  }

  // Ensuring we don't overflow the mergedInputSounds size
  final int answerPurposesCount = purposesCount < mergedInputSounds.length
      ? purposesCount
      : mergedInputSounds.length;

  // Selecting sound
  final selectedSoundIndex = random.nextInt(mergedInputSounds.length);
  final selectedSound = mergedInputSounds.entries.elementAt(selectedSoundIndex);
  final selectedSoundCaption = selectedSound.key;
  final selectedSoundPath = selectedSound.value;

  // Selecting possibilities
  var possibilities = <String, bool>{};
  do {
    final selectedSoundIndex = random.nextInt(mergedInputSounds.length);
    final selectedSound =
        mergedInputSounds.entries.elementAt(selectedSoundIndex);

    final soundCaption = selectedSound.key;
    final isAnExpectedAnswer = selectedSoundCaption == soundCaption;

    possibilities[soundCaption] = isAnExpectedAnswer;
  } while (possibilities.entries.length < answerPurposesCount);

  // Remplacing an answer with the expected sound if needed
  final hasTheExpectedAnswer =
      possibilities.entries.any((element) => element.value);
  if (!hasTheExpectedAnswer) {
    int indexToReplace = random.nextInt(possibilities.length);

    final keyToReplace = possibilities.entries.elementAt(indexToReplace).key;
    possibilities.remove(keyToReplace);

    possibilities.addAll({selectedSoundCaption: true});
  }

  return shuffleExercise(Exercise(
    soundToFindString: selectedSoundCaption,
    soundToFindPath: selectedSoundPath,
    possibilities: possibilities,
  ));
}

Exercise shuffleExercise(Exercise original) {
  Random random = Random();
  var length = original.possibilities.length;
  var newPossibilities = <String, bool>{};

  for (var i = 0; i < length; i++) {
    var hasSetNewEntry = false;
    do {
      final selectedIndex = random.nextInt(length);
      final selectedKey = original.possibilities.keys.toList()[selectedIndex];
      final isAlreadySet = newPossibilities.keys.contains(selectedKey);
      if (isAlreadySet) continue;
      newPossibilities[selectedKey] = original.possibilities[selectedKey]!;
      hasSetNewEntry = true;
    } while (!hasSetNewEntry);
  }

  return Exercise(
    soundToFindString: original.soundToFindString,
    soundToFindPath: original.soundToFindPath,
    possibilities: newPossibilities,
  );
}

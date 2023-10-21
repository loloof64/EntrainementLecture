import 'package:entrainement_lecture/misc/sound_engine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FindingSoundHeaderWidget extends StatelessWidget {
  /* Path of the sound to play */
  final String soundToFindPath;

  const FindingSoundHeaderWidget({
    super.key,
    required this.soundToFindPath,
  });

  void _replaySound() {
    soundEngine.playSound(soundToFindPath);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: _replaySound,
      icon: const FaIcon(
        FontAwesomeIcons.volumeHigh,
      ),
    );
  }
}

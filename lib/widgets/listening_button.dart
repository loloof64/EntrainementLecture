import 'package:entrainement_lecture/misc/sound_engine.dart';
import 'package:entrainement_lecture/widgets/beautiful_button.dart';
import 'package:flutter/material.dart';

class ListeningButtonWidget extends StatefulWidget {
  final String caption;
  final String soundAssetPath;
  const ListeningButtonWidget({
    super.key,
    required this.caption,
    required this.soundAssetPath,
  });

  @override
  State<ListeningButtonWidget> createState() => _ListeningButtonWidgetState();
}

class _ListeningButtonWidgetState extends State<ListeningButtonWidget> {
  void _playSound() async {
    SoundEngine.instance.playSound(widget.soundAssetPath);
  }

  @override
  Widget build(BuildContext context) {
    return BeautifulButtonWidget(
      caption: widget.caption,
      action: _playSound,
    );
  }
}

import 'package:entrainement_lecture/widgets/beautiful_button.dart';
import 'package:flutter/material.dart';
import 'package:minisound/minisound.dart';

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
  final _soundEngine = Engine();

  @override
  void initState() {
    _initSoundEngine();
    super.initState();
  }

  void _initSoundEngine() async {
    await _soundEngine.init();
  }

  void _playSound() async {
    final sound = await _soundEngine.loadSoundAsset(widget.soundAssetPath);
    await _soundEngine.start();
    sound.play();
  }

  @override
  Widget build(BuildContext context) {
    return BeautifulButtonWidget(
      caption: widget.caption,
      action: _playSound,
    );
  }
}

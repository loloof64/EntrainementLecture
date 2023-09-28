import 'package:minisound/minisound.dart';

class _SoundEngine {
  final _engine = Engine();

  _SoundEngine(){
    _initEngine();
  } 



  void playSound(String soundAssetPath) async {
    final sound = await _engine.loadSoundAsset(soundAssetPath);
    await _engine.start();
    sound.play();
  }

  void _initEngine()async {
    await _engine.init();
  }
}

final soundEngine = _SoundEngine();
import 'package:minisound/minisound.dart';

class SoundEngine {
  static final instance = SoundEngine._();
  final _engine = Engine();

  SoundEngine._(){
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
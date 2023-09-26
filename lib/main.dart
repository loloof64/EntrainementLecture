import 'package:entrainement_lecture/widgets/beautiful_button.dart';
import 'package:flutter/material.dart';
import 'package:minisound/minisound.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrainement à la lecture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _soundEngine = Engine();

  @override
  void initState() {
    _initSoundEngine();
    super.initState();
  }

  void _initSoundEngine() async {
    await _soundEngine.init();
  }


  void _playSound(String assetSoundPath) async {
    final sound = await _soundEngine.loadSoundAsset(assetSoundPath);
    await _soundEngine.start();
    sound.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Accueil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BeautifulButtonWidget(
              caption: 'Ecouter',
              action: () => _playSound('assets/sounds/ecouter.mp3'),
            ),
            BeautifulButtonWidget(
              caption: 'Trouver',
              action: () => _playSound('assets/sounds/trouver.mp3'),
            ),
          ],
        ),
      ),
    );
  }
}

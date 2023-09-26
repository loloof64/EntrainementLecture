import 'package:entrainement_lecture/screens/listen_menu.dart';
import 'package:entrainement_lecture/widgets/menu_button.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Accueil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MenuButtonWidget(
              caption: 'Ecouter',
              soundAssetPath: 'assets/sounds/ecouter.mp3',
              onNavigation: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx2) {
                    return const ListenMenuScreen();
                  }),
                );
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            MenuButtonWidget(
              caption: 'Trouver',
              soundAssetPath: 'assets/sounds/trouver.mp3',
              onNavigation: () {},
            ),
          ],
        ),
      ),
    );
  }
}

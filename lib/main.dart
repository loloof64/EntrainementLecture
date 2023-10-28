import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/screens/menus/find.dart';
import 'package:entrainement_lecture/screens/menus/listen.dart';
import 'package:entrainement_lecture/widgets/manual.dart';
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
  void _showManualDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx2) {
          return AlertDialog(
            title: const Text("Guide"),
            content: const ManualWidget(),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Valider'),
              ),
            ],
          );
        });
  }

  void _showAboutDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx2) {
          return AlertDialog(
            title: const Text("À propos"),
            content: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Application d\'entraînement à la lecture'),
                Text('L. Bernabé (2023)'),
                SizedBox(
                  height: 20,
                ),
                Text('Sons: F. Fucci'),
                Text('Icône: F. Fucci'),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Valider'),
              ),
            ],
          );
        });
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MenuButtonWidget(
              caption: 'Ecouter',
              soundAssetPath: 'assets/sounds/ecouter.mp3',
              onNavigation: () {
                goToPage(const ListenMenuScreen(), context);
              },
            ),
            const SizedBox(
              height: menusVerticalGap,
            ),
            MenuButtonWidget(
              caption: 'Trouver',
              soundAssetPath: 'assets/sounds/trouver.mp3',
              onNavigation: () {
                goToPage(const FindMenuScreen(), context);
              },
            ),
            const SizedBox(
              height: menusVerticalGap,
            ),
            ElevatedButton(
              onPressed: _showManualDialog,
              child: const Text('Guide'),
            ),
            const SizedBox(
              height: menusVerticalGap,
            ),
            ElevatedButton(
              onPressed: _showAboutDialog,
              child: const Text('À propos'),
            ),
          ],
        ),
      ),
    );
  }
}

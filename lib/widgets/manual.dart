import 'package:flutter/material.dart';

const summary = 
  """Vous disposez de deux modes.\n
  Le mode 'écouter' vous permettra simplement d'écouter 
  les différentes lettres de l'alphabet, les différentes syllabes, ainsi qu'une liste de mots.\n
  Le mode 'trouver' vous permettra de vous exercer à retrouver les sons que vous avez travaillés 
  dans le mode 'écouter', et ce, toujours par catégorie (lettres/syllabes/mots).""";

class ManualWidget extends StatelessWidget {
  const ManualWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(summary));
  }
}
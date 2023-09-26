import 'package:entrainement_lecture/widgets/beautiful_button.dart';
import 'package:flutter/material.dart';
import 'package:minisound/minisound.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MenuButtonWidget extends StatefulWidget {
  final String caption;
  final String soundAssetPath;
  final void Function() onNavigation;


  const MenuButtonWidget({
    super.key,
    required this.caption,
    required this.soundAssetPath,
    required this.onNavigation,
  });

  @override
  State<MenuButtonWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BeautifulButtonWidget(caption: widget.caption, action: widget.onNavigation),
        const SizedBox(
          width: 20.0,
        ),
        IconButton(
          onPressed: _playSound,
          icon: const FaIcon(FontAwesomeIcons.circlePlay,),
        ),
      ],
    );
  }
}

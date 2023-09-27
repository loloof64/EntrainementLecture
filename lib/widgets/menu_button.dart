import 'package:entrainement_lecture/misc/commons.dart';
import 'package:entrainement_lecture/widgets/beautiful_button.dart';
import 'package:flutter/material.dart';
import 'package:minisound/minisound.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButtonWidget extends StatefulWidget {
  final bool horizontalLayout;
  final String caption;
  final String soundAssetPath;
  final void Function() onNavigation;

  const MenuButtonWidget({
    super.key,
    this.horizontalLayout = true,
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
    final children = <Widget>[
      BeautifulButtonWidget(
          caption: widget.caption, action: widget.onNavigation),
      const SizedBox(
        width: menuButtonHorizontalGap,
      ),
      IconButton(
        onPressed: _playSound,
        icon: const FaIcon(
          FontAwesomeIcons.circlePlay,
        ),
      ),
    ];

    return widget.horizontalLayout
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          );
  }
}

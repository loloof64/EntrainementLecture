import 'package:entrainement_lecture/misc/commons.dart';
import 'package:flutter/material.dart';

class BeautifulButtonWidget extends StatelessWidget {
  final String caption;
  final void Function() action;

  const BeautifulButtonWidget({
    super.key,
    required this.caption,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(beautifulButtonRadius),
        ),
      ),
      child: Text(caption),
    );
  }
}

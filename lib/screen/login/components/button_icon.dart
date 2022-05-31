import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    required this.urlimage,
    required this.press,
  }) : super(key: key);
  final String urlimage;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      icon: Image.asset(urlimage),
      iconSize: 40,
      onPressed: press,
    );
  }
}

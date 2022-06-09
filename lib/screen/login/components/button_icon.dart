import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

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
    SizeConfig2().init(context);
    return IconButton(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig2.safeBlockHorizontal * 5),
      icon: Image.asset(urlimage),
      iconSize: SizeConfig2.screenWidth * 0.1,
      onPressed: press,
    );
  }
}

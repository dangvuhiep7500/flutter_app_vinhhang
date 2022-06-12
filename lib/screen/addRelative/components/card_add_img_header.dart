import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CardImageHeader extends StatelessWidget {
  const CardImageHeader({
    Key? key,
    required this.image,
    required this.onpress,
  }) : super(key: key);
  final String image;
  final GestureTapCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: SizeConfig.screenWidth * 0.4,
        width: SizeConfig.screenWidth * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

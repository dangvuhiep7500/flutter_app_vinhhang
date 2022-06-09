import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CardImageHeader extends StatelessWidget {
  const CardImageHeader({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenWidth * 0.4,
      width: SizeConfig.screenWidth * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}

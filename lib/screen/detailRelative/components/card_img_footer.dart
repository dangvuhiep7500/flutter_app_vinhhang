import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CardImageFooter extends StatelessWidget {
  const CardImageFooter({
    Key? key,
    required this.image,
    required this.left,
    required this.height,
    required this.width,
    required this.borderRadius,
  }) : super(key: key);
  final String image;
  final double left;
  final double height;
  final double width;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(left),
          bottom: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: getProportionateScreenHeight(height),
              width: getProportionateScreenWidth(width),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

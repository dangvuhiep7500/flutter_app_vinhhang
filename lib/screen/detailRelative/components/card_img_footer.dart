import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CardImageFooter extends StatelessWidget {
  const CardImageFooter({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(80),
          bottom: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: SizeConfig.screenWidth * 0.25,
              width: SizeConfig.screenWidth * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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

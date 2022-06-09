import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key? key,
    required this.textRelationship,
    required this.textName,
  }) : super(key: key);
  final String textRelationship;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenWidth(130),
        bottom: 0,
        left: getProportionateScreenWidth(10),
        right: getProportionateScreenWidth(10),
      ),
      child: Column(
        children: [
          Text(
            textRelationship,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          Text(
            textName,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
            ),
          ),
        ],
      ),
    );
  }
}

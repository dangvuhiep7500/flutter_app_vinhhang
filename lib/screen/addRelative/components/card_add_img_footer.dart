import 'dart:io';

import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class CardAddImageFooter extends StatelessWidget {
  const CardAddImageFooter({
    Key? key,
    required this.image,
  }) : super(key: key);
  // final String image;
  final File image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: SizeConfig.screenWidth * 0.2,
            width: SizeConfig.screenWidth * 0.2,
            child: Image.file(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

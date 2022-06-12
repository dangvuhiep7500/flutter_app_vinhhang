import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

import '../../../utils/theme.dart';

class CardAddNumberTomb extends StatelessWidget {
  const CardAddNumberTomb({
    Key? key,
    required this.text,
    this.controller,
    this.left = 60,
  }) : super(key: key);
  final String text;
  final TextEditingController? controller;
  final double left;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: Row(
        children: [
          Text(text),
          SizedBox(
            height: getProportionateScreenWidth(25),
            width: getProportionateScreenWidth(80),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                filled: true,
                fillColor: kColorCate,
                border: InputBorder.none,
                hintStyle: TextStyle(color: kColorGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

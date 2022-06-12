import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class CardHeaderTextField extends StatelessWidget {
  const CardHeaderTextField({
    Key? key,
    this.textHint,
    this.controller,
    this.validator,
    required this.height,
    required this.horizontal,
    this.fontSize,
  }) : super(key: key);
  final String? textHint;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final double height;
  final double horizontal;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontal),
          child: TextField(
            style: TextStyle(fontSize: fontSize),
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: kColorCate,
              border: InputBorder.none,
              hintText: textHint,
              hintStyle: const TextStyle(color: kColorGrey),
            ),
          ),
        ),
      ],
    );
  }
}

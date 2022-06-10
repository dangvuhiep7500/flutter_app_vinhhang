import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class CardAddNumberTomb extends StatelessWidget {
  const CardAddNumberTomb({
    Key? key,
    required this.text,
    this.controller,
  }) : super(key: key);
  final String text;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Row(
        children: [
          Text(text),
          Container(
            height: 25,
            width: 50,
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

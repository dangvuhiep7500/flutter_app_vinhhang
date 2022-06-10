import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
    required this.text1,
    this.textField,
  }) : super(key: key);
  final String text1;
  final Widget? textField;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Row(
        children: [
          Text(text1),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: textField,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
    required this.text1,
    required this.text2,
    required this.number,
  }) : super(key: key);
  final String text1;
  final String text2;
  final double number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 80),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Text(text1),
          ),
          Container(
            width: MediaQuery.of(context).size.width * number,
            child: Text(":"),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(text2),
          ),
        ],
      ),
    );
  }
}

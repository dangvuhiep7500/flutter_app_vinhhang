import 'package:flutter/material.dart';

class CardNumberTomb extends StatelessWidget {
  const CardNumberTomb({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final int text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Text("Số ô: $text1"),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text("Số Lô: $text2"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputDate extends StatelessWidget {
  const InputDate({
    Key? key,
    this.text1,
    this.text2,
    required this.onpress,
  }) : super(key: key);
  final text1;
  final text2;
  final GestureTapCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Text(text1),
          ),
          TextButton(
              onPressed: onpress,
              child: FittedBox(
                child: Text(
                  text2,
                  style: TextStyle(color: Colors.black),
                ),
              ))
        ],
      ),
    );
  }
}

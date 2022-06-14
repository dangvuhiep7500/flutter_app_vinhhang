import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
    required this.text1,
    required this.text2,
    this.number = 0.15,
    this.left = 60,
    this.width = 120,
    this.fontSizetext1 = 15,
    this.fontSizetext2 = 15,
    this.widthtext2 = 100,
  }) : super(key: key);
  final String text1;
  final String text2;
  final double number;
  final double left;
  final double width;
  final double widthtext2;
  final double fontSizetext1;
  final double fontSizetext2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(width),
            child: Text(
              text1,
              style: TextStyle(fontSize: fontSizetext1),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * number,
            child: const Text(":"),
          ),
          SizedBox(
            width: getProportionateScreenWidth(widthtext2),
            child: Text(
              text2,
              style: TextStyle(fontSize: fontSizetext2),
            ),
          ),
        ],
      ),
    );
  }
}

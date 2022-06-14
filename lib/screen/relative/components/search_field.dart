import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.onpress,
    required this.text,
    required this.width,
  }) : super(key: key);
  final Function(String) onpress;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Search(onpress: onpress, text: text, width: width),
          Icon(
            Icons.qr_code_scanner,
            size: getProportionateScreenWidth(40),
          ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.onpress,
    required this.text,
    required this.width,
  }) : super(key: key);

  final Function(String p1) onpress;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * width,
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: kColorBlack.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        onChanged: onpress,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: text,
            prefixIcon: const Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(13))),
      ),
    );
  }
}

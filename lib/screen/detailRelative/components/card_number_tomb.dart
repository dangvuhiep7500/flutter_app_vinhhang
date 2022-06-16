import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

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
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(60)),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Row(
              children: [
                Text(
                  "Số ô:",
                  style: PrimaryFont.medium(15).copyWith(color: kColorBlack),
                ),
                Text(
                  " $text1",
                  style: PrimaryFont.regular(15).copyWith(color: kColorBlack),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              children: [
                Text(
                  "Số Lô:",
                  style: PrimaryFont.medium(15).copyWith(color: kColorBlack),
                ),
                Text(
                  " $text2",
                  style: PrimaryFont.regular(15).copyWith(color: kColorBlack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

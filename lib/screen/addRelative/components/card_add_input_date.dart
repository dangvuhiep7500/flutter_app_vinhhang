import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

import '../../../utils/theme.dart';

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
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(60)),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(90),
            child: Text(
              text1,
              style: PrimaryFont.medium(15).copyWith(color: kColorBlack),
            ),
          ),
          TextButton(
              onPressed: onpress,
              child: FittedBox(
                child: Text(
                  text2,
                  style: PrimaryFont.medium(15).copyWith(color: kColorBlack),
                ),
              ))
        ],
      ),
    );
  }
}

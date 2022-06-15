import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

import '../../../utils/size_config.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    SizeConfig2().init(context);
    return SizedBox(
      height: SizeConfig2.screenHeight * 0.0625,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig2.safeBlockHorizontal * 10,
              vertical: SizeConfig2.safeBlockVertical * 1),
          primary: const Color.fromARGB(255, 209, 5, 5),
          onPrimary: kColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Text(text,
            style: PrimaryFont.medium(20).copyWith(color: kColorWhite)),
        onPressed: press,
      ),
    );
  }
}

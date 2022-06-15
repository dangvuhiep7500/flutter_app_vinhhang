import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/icon_button_noti.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class HeaderDefault extends StatelessWidget {
  const HeaderDefault({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onpress,
  }) : super(key: key);
  final String text1;
  final String text2;
  final GestureTapCallback onpress;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTop(text1: text1, onpress: onpress),
          SizedBox(
            height: getProportionateScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text("$text2 $text1", style: PrimaryFont.regular(25)),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
        ],
      ),
    );
  }
}

class HeaderTop extends StatelessWidget {
  const HeaderTop({
    Key? key,
    required this.text1,
    required this.onpress,
  }) : super(key: key);
  final GestureTapCallback onpress;
  final String text1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AvatarUser(onpress: onpress),
            Text(
              text1,
              style: PrimaryFont.medium(24).copyWith(color: kColorBlack),
            ),
          ],
        ),
        const IconButtonNoti(),
      ],
    );
  }
}

class AvatarUser extends StatelessWidget {
  const AvatarUser({
    Key? key,
    required this.onpress,
  }) : super(key: key);
  final GestureTapCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: GestureDetector(
        onTap: onpress,
        child: ClipOval(
          child: SizedBox.fromSize(
            size: const Size.fromRadius(20), // Image radius
            child: Image.asset("assets/images/facebook.png"),
          ),
        ),
      ),
    );
  }
}

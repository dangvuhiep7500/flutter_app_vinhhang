import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/icon_button_noti.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/search_field.dart';

import '../../../utils/size_config.dart';

class HeaderDefault extends StatelessWidget {
  const HeaderDefault({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTop(text1: text1),
          SizedBox(
            height: getProportionateScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
              "$text2 $text1",
              style: TextStyle(fontSize: getProportionateScreenWidth(25)),
            ),
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
  }) : super(key: key);

  final String text1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const AvatarUser(),
            Text(
              text1,
              style: TextStyle(fontSize: getProportionateScreenWidth(24)),
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(20), // Image radius
          child: Image.asset("assets/images/facebook.png"),
        ),
      ),
    );
  }
}

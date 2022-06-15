import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/notification/notification.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/icon_button_noti.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: getProportionateScreenWidth(30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          text,
          style: PrimaryFont.bold(24).copyWith(color: kColorRed),
        ),
        const IconButtonNoti(),
      ],
    );
  }
}

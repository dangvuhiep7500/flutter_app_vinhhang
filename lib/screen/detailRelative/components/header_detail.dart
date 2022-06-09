import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/icon_button_noti.dart';

import '../../../utils/size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          "Chi tiết",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              color: Colors.red,
              fontWeight: FontWeight.w700),
        ),
        IconButtonNoti(
          numOf: 1,
          press: () {},
        ),
      ],
    );
  }
}

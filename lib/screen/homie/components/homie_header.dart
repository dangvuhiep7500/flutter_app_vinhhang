import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/homie/components/icon_button_noti.dart';
import 'package:flutter_app_vinhhang/screen/homie/components/search_field.dart';

import '../../../utils/size_config.dart';

class HomieHeader extends StatelessWidget {
  const HomieHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15)),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                          size: const Size.fromRadius(20), // Image radius
                          child: Image.asset("assets/images/facebook.png")),
                    ),
                  ),
                  Text(
                    "Thanh Tran",
                    style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                  ),
                ],
              ),
              IconButtonNoti(
                numOf: 1,
                press: () {},
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Text(
              "Người thân của Tran",
              style: TextStyle(fontSize: getProportionateScreenWidth(25)),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          const SearchField()
        ],
      ),
    );
  }
}

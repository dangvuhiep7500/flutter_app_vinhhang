import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/search_field.dart';

import '../../utils/size_config.dart';

class CemeteryScreen extends StatelessWidget {
  const CemeteryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenWidth(15),
            ),
            const Header(
              text1: "Thanh Tran",
            ),
            SizedBox(
              height: getProportionateScreenWidth(15),
            ),
            Search(
              text: "Tìm kiếm nghĩa trang",
              onpress: (value) {},
              width: 0.9,
            )
          ],
        ),
      )),
    );
  }
}

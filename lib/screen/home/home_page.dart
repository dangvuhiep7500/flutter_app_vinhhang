import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/home/components/calendar.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';

import '../../utils/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.onpress}) : super(key: key);
  final GestureTapCallback onpress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenWidth(15),
            ),
            Flexible(
              flex: 0,
              fit: FlexFit.tight,
              child: HeaderDefault(
                text1: "Thanh Tran",
                text2: "Xin chào",
                onpress: onpress,
              ),
            ),
            const Calendar()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/navigation_drawer/navigation_drawer_widget.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/list_relative.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/search_field.dart';

import '../../../utils/size_config.dart';

class RelativeScreen extends StatelessWidget {
  RelativeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: NavigationDrawerWidget(),
        body: Column(
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
                text2: "Người thân của",
                onpress: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
            SearchField(
              text: "Tìm kiếm",
              onpress: (value) {},
              width: getProportionateScreenWidth(260),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const Flexible(
              flex: 3,
              child: ListRelative(),
            ),
          ],
        ),
      ),
    );
  }
}

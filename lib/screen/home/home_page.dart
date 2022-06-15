import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/home/components/calendar.dart';
import 'package:flutter_app_vinhhang/screen/navigation_drawer/navigation_drawer_widget.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';

import '../../utils/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const NavigationDrawerWidget(),
        body: SingleChildScrollView(
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
                    onpress: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                ),
                const Calendar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

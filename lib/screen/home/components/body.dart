import 'package:flutter/cupertino.dart';
import 'package:flutter_app_vinhhang/screen/home/components/calendar.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenWidth(15),
            ),
            const Flexible(
              flex: 0,
              fit: FlexFit.tight,
              child: HeaderDefault(
                text1: "Thanh Tran",
                text2: "Xin chào",
              ),
            ),
            const Calendar()
          ],
        ),
      ),
    );
  }
}

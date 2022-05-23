import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

import '../../../utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          const HomieHeader()
        ],
      ),
    );
  }
}

class HomieHeader extends StatelessWidget {
  const HomieHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                height: getProportionateScreenWidth(46),
                width: getProportionateScreenWidth(46),
                child: Icon(
                  Icons.notifications_outlined,
                  size: getProportionateScreenWidth(25),
                ),
              ),
              Positioned(
                top: -3,
                right: 0,
                child: Container(
                  height: getProportionateScreenWidth(25),
                  width: getProportionateScreenWidth(25),
                  decoration: BoxDecoration(
                    color: kColorRed,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: kColorWhite),
                  ),
                  child: Center(
                    child: Text(
                      "20",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(10),
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

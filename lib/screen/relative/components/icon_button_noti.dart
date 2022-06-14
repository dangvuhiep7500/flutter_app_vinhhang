import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/notification/notification.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class IconButtonNoti extends StatelessWidget {
  const IconButtonNoti({
    Key? key,
    this.numOf = 1,
  }) : super(key: key);
  final int numOf;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const NotificationScreen()));
      },
      borderRadius: BorderRadius.circular(50),
      child: Stack(
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
          if (numOf != 0)
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
                    "$numOf",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      height: 1,
                      color: kColorWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

class CardLocalMap extends StatelessWidget {
  const CardLocalMap({
    Key? key,
    required this.onpress,
  }) : super(key: key);
  final GestureTapCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(60),
          bottom: getProportionateScreenWidth(10),
          top: getProportionateScreenWidth(7)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(3)),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
                child: const Icon(Icons.location_on)),
          ),
          GestureDetector(
            child: const Text("Xem bản đồ",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: kColorBlack)),
            onTap: onpress,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/models/listdear.model.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_header.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_footer.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_header.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_info.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_local_map.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_number_tomb.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_detail.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

import '../../../utils/theme.dart';

class RelativeDetailtest extends StatefulWidget {
  final Dear dear;
  const RelativeDetailtest({
    Key? key,
    required this.dear,
  }) : super(key: key);

  @override
  State<RelativeDetailtest> createState() => _RelativeDetailtestState();
}

class _RelativeDetailtestState extends State<RelativeDetailtest>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              const Header(),
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenWidth(30),
                    ),
                    width: double.infinity,
                    child: Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: kColorWhite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CardHeader(
                            textRelationship: widget.dear.relationship,
                            textName: widget.dear.name,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CardInfo(
                            text1: "Gi?i tính",
                            text2: "N?",
                            number: 0.15,
                          ),
                          const CardInfo(
                            text1: "Sinh ngày",
                            text2: "8/8/1900",
                            number: 0.15,
                          ),
                          const CardInfo(
                            text1: "Nh?m ngày",
                            text2: "8/8/1900",
                            number: 0.15,
                          ),
                          const CardInfo(
                            text1: "M?t ngày",
                            text2: "8/8/1900",
                            number: 0.15,
                          ),
                          const CardInfo(
                            text1: "Nh?m ngày",
                            text2: "8/8/1900",
                            number: 0.15,
                          ),
                          const CardInfo(
                            text1: "Hu?ng duong",
                            text2: "8/8/1900",
                            number: 0.15,
                          ),
                          SizedBox(
                            height: getProportionateScreenWidth(10),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(10)),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Text(
                                "M? ph?n",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(20),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenWidth(10),
                          ),
                          const CardInfo(
                            text1: "Tên nghia trang",
                            text2: "abc",
                            number: 0.05,
                          ),
                          SizedBox(
                            height: getProportionateScreenWidth(10),
                          ),
                          const CardNumberTomb(
                            text1: 5,
                            text2: "A1",
                          ),
                          SizedBox(
                            height: getProportionateScreenWidth(10),
                          ),
                          const CardInfo(
                            text1: "Ngày dang kí",
                            text2: "9/9/1900",
                            number: 0.05,
                          ),
                          CardLocalMap(
                            onpress: () {},
                          ),
                          SizedBox(
                            height: getProportionateScreenWidth(20),
                          ),
                          CardImageFooter(image: widget.dear.image),
                        ],
                      ),
                    ),
                  ),
                  CardImageHeader(image: widget.dear.image),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

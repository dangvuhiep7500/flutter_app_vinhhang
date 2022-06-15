import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/models/listdear.model.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_header.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_footer.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_header.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_info.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_local_map.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_number_tomb.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

import '../../../utils/theme.dart';

class RelativeDetail extends StatefulWidget {
  final Dear dear;
  const RelativeDetail({
    Key? key,
    required this.dear,
  }) : super(key: key);

  @override
  State<RelativeDetail> createState() => _RelativeDetailState();
}

class _RelativeDetailState extends State<RelativeDetail>
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Column(
              children: [
                const Header(
                  text: "Chi tiết",
                ),
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
                            SizedBox(
                              height: getProportionateScreenWidth(20),
                            ),
                            const CardInfo(
                              text1: "Giới tính",
                              text2: "N?",
                            ),
                            const CardInfo(
                              text1: "Sinh ngày",
                              text2: "8/8/1900",
                            ),
                            const CardInfo(
                              text1: "Nhằm ngày",
                              text2: "8/8/1900",
                            ),
                            const CardInfo(
                              text1: "Mất ngày",
                              text2: "8/8/1900",
                            ),
                            const CardInfo(
                              text1: "Nhằm ngày",
                              text2: "8/8/1900",
                            ),
                            const CardInfo(
                              text1: "Hưởng dương",
                              text2: "8/8/1900",
                            ),
                            SizedBox(
                              height: getProportionateScreenWidth(10),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(150),
                              child: Text(
                                "Mộ phần",
                                style: PrimaryFont.bold(20)
                                    .copyWith(color: kColorBlack),
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenWidth(10),
                            ),
                            const CardInfo(
                              text1: "Tên nghĩa trang",
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
                              text1: "Ngày đăng kí",
                              text2: "9/9/1900",
                              number: 0.05,
                            ),
                            CardLocalMap(
                              onpress: () {},
                            ),
                            CardImageFooter(
                              image: widget.dear.image,
                              left: getProportionateScreenWidth(50),
                              height: getProportionateScreenWidth(100),
                              width: getProportionateScreenWidth(100),
                              borderRadius: 10,
                            ),
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
      ),
    );
  }
}

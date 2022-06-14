import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/detailGrave/grave_detail.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_footer.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_info.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_default.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_icon.dart';

import '../../utils/size_config.dart';
import '../../utils/theme.dart';

class CemeteryDetail extends StatefulWidget {
  const CemeteryDetail({Key? key}) : super(key: key);

  @override
  State<CemeteryDetail> createState() => _CemeteryDetailState();
}

class _CemeteryDetailState extends State<CemeteryDetail>
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
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              const Header(
                text: "Chi tiết nghĩa trang",
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(right: getProportionateScreenWidth(3)),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: const Icon(Icons.location_on)),
                  ),
                  const Text("Cần Giuộc, Long An",
                      style: TextStyle(color: kColorBlack, fontSize: 20)),
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Card(
                color: kColorCate,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 10),
                  child: Column(
                    children: [
                      const Text(
                        "Nghĩa trang",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Sài Gòn Thiên Phúc",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: SizeConfig.screenWidth * 0.5,
                        width: SizeConfig.screenWidth * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/anh3.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CardImageFooter(
                image: "assets/images/anh3.jpg",
                height: 65,
                width: 80,
                left: 10,
                borderRadius: 0,
              ),
              const CardInfo(
                text1: "Địa chỉ",
                text2: "",
                left: 25,
                width: 70,
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                child: const Text(
                  "Ấp Long Phú Kim, Tân An,\nHuyện Cần Giờ, Tỉnh Long An",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              const CardInfo(
                text1: "Quản lý",
                text2: "Nguyễn Văn A",
                number: 0.1,
                left: 25,
                width: 70,
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Row(
                children: [
                  const CardInfo(
                    text1: "Điện Thoại",
                    text2: "0123456789",
                    number: 0.1,
                    left: 25,
                    width: 70,
                  ),
                  ButtonIcon(
                    press: () {},
                    urlimage: "assets/icons/icon_phone.png",
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: ButtonDefault(
                    text: "Chi tiết các mộ phần",
                    onpress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const GraveDetail()));
                    },
                    borderRadius: 10,
                    color: kColorGreen),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

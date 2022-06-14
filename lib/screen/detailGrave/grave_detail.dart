import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_footer.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_info.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_icon.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';
import 'package:intl/intl.dart';

import '../../utils/size_config.dart';

class GraveDetail extends StatefulWidget {
  const GraveDetail({Key? key}) : super(key: key);

  @override
  State<GraveDetail> createState() => _GraveDetailState();
}

class Data {
  Map fetched_data = {
    "data": [
      {
        "id": 1,
        "name": "Mộ đơn - chưa gồm giá xây",
        "size": "dài 1m - rộng 1m",
        "local": "Khu A1",
        "priceMin": 15000000,
        "priceMax": 45000000
      },
      {
        "id": 2,
        "name": "Mộ đôi - chưa gồm giá xây",
        "size": "dài 5m - rộng 5m",
        "local": "Khu A2",
        "priceMin": 20000000,
        "priceMax": 60000000
      },
      {
        "id": 3,
        "name": "Mộ đơn - chưa gồm giá xây",
        "size": "dài 1m - rộng 1m",
        "local": "Khu A3",
        "priceMin": 12000000,
        "priceMax": 42000000
      },
    ]
  };
  List? _data;

  Data() {
    _data = fetched_data["data"];
  }

  int getId(int index) {
    return _data![index]["id"];
  }

  String getName(int index) {
    return _data![index]["name"];
  }

  String getLocal(int index) {
    return _data![index]["local"];
  }

  String getSize(int index) {
    return _data![index]["size"];
  }

  int getPriceMin(int index) {
    return _data![index]["priceMin"];
  }

  int getPriceMax(int index) {
    return _data![index]["priceMax"];
  }

  int getLength() {
    return _data!.length;
  }
}

class _GraveDetailState extends State<GraveDetail>
    with SingleTickerProviderStateMixin {
  final Data _data = Data();
  late AnimationController _controller;
  String dropdownvalue = 'Tất cả các loại mộ';
  var items = [
    'Tất cả các loại mộ',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

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
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              text: "Chi tiết các mộ phần",
            ),
            const Text(
              "Nghĩa trang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const Text(
              "Sài Gòn Thiên Phúc",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Container(
              color: Colors.blueGrey[50],
              width: SizeConfig.screenWidth * 0.9,
              height: getProportionateScreenHeight(40),
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(15)),
                          child: Text(
                            items,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                child: Card(
                  elevation: 15,
                  child: ListView.builder(
                    primary: false,
                    itemCount: _data.getLength(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const CemeteryDetail()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(10),
                              vertical: getProportionateScreenWidth(12)),
                          child: Card(
                            color: Colors.blueGrey[50],
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10),
                                  vertical: getProportionateScreenWidth(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${_data.getName(index)}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenWidth(15),
                                  ),
                                  CardInfo(
                                    text1: "Kích thước",
                                    text2: "${_data.getSize(index)}",
                                    number: 0.05,
                                    left: 0,
                                    width: getProportionateScreenWidth(75),
                                    widthtext2:
                                        getProportionateScreenWidth(150),
                                  ),
                                  CardInfo(
                                    text1: "Vị trí",
                                    text2: "${_data.getLocal(index)}",
                                    number: 0.05,
                                    left: 0,
                                    width: getProportionateScreenWidth(75),
                                    widthtext2:
                                        getProportionateScreenWidth(150),
                                  ),
                                  CardInfo(
                                    text1: "Giá",
                                    text2:
                                        "${NumberFormat.decimalPattern('vi').format(_data.getPriceMin(index))} - ${NumberFormat.decimalPattern('vi').format(_data.getPriceMax(index))}",
                                    number: 0.05,
                                    left: 0,
                                    width: getProportionateScreenWidth(75),
                                    widthtext2:
                                        getProportionateScreenWidth(150),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenWidth(15),
                                  ),
                                  Row(
                                    children: [
                                      CardImageFooter(
                                        image: "assets/images/anh3.jpg",
                                        left: 0,
                                        height: getProportionateScreenWidth(60),
                                        width: getProportionateScreenWidth(60),
                                        borderRadius: 0,
                                      ),
                                      CardImageFooter(
                                        image: "assets/images/anh3.jpg",
                                        left: 0,
                                        height: getProportionateScreenWidth(60),
                                        width: getProportionateScreenWidth(60),
                                        borderRadius: 0,
                                      ),
                                      ButtonIcon(
                                        press: () {},
                                        urlimage: "assets/icons/icon_phone.png",
                                      ),
                                      ButtonIcon(
                                        press: () {},
                                        urlimage:
                                            "assets/icons/icon_lienhe.png",
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

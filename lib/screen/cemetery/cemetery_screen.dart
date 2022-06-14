import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_vinhhang/screen/detailCemetery/cemetery_detail.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_default.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/search_field.dart';
import 'package:intl/intl.dart';
import '../../utils/size_config.dart';
import '../../utils/theme.dart';

class CemeteryScreen extends StatefulWidget {
  const CemeteryScreen({Key? key}) : super(key: key);

  @override
  State<CemeteryScreen> createState() => _CemeteryScreenState();
}

class Data {
  Map fetched_data = {
    "data": [
      {
        "id": 1,
        "name": "Nghĩa trang A",
        "local": "Ấp Long Tân Phú, Tân Kim,\nHuyện Cần Giờ, Tỉnh Long An",
        "priceMin": 15000000,
        "priceMax": 45000000
      },
      {
        "id": 2,
        "name": "Nghĩa trang B",
        "local": "Ấp Long Tân Hoà, Tân An,\nHuyện Cần Giuộc, Tỉnh Long An",
        "priceMin": 10000000,
        "priceMax": 50000000
      },
      {
        "id": 3,
        "name": "Nghĩa trang C",
        "local": "Ấp Long Phú Kim, Tân An,\nHuyện Cần Giờ, Tỉnh Long An",
        "priceMin": 12000000,
        "priceMax": 55000000
      }
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

class _CemeteryScreenState extends State<CemeteryScreen>
    with SingleTickerProviderStateMixin {
  final Data _data = Data();
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(10),
              right: getProportionateScreenWidth(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenWidth(15),
              ),
              const Header(
                text1: "Thanh Tran",
              ),
              SizedBox(
                height: getProportionateScreenWidth(15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Search(
                  text: "Tìm kiếm nghĩa trang",
                  onpress: (value) {},
                  width: 0.8,
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          right: getProportionateScreenWidth(3)),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: const Icon(Icons.location_on)),
                    ),
                    const Text("Cần Giuộc, Long An",
                        style: TextStyle(color: kColorBlack, fontSize: 20)),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(25),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "Giá từ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "${NumberFormat.decimalPattern('vi').format(15000000)} - ${NumberFormat.decimalPattern('vi').format(300000000)}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(15),
              ),
              Flexible(
                child: ListView.builder(
                  primary: false,
                  itemCount: _data.getLength(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CemeteryDetail()));
                      },
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 10, top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_data.getName(index)}",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: kColorBlack,
                                ),
                              ),
                              const Divider(
                                endIndent: 30,
                                thickness: 1,
                                color: kColorBlack,
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Giá từ:",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: kColorCate)),
                                    child: Text(
                                      "${NumberFormat.decimalPattern('vi').format(_data.getPriceMin(index))} - ${NumberFormat.decimalPattern('vi').format(_data.getPriceMax(index))}",
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(15),
                              ),
                              Text(
                                "${_data.getLocal(index)}",
                                style: const TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: ButtonDefault(
                                    text: "Xem chi tiết",
                                    onpress: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CemeteryDetail()));
                                    },
                                    borderRadius: 10,
                                    color: kColorGreen),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

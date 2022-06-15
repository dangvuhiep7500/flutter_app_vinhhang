import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/icon_button_noti.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/search_field.dart';

import '../../utils/size_config.dart';
import '../../utils/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class Data {
  Map fetched_data = {
    "data": [
      {
        "id": 1,
        "title": "Phần mộ của cụ A",
        "messageText": "đã được lau sạch",
        "image": "assets/icons/google.png"
      },
      {
        "id": 2,
        "title": "Phần mộ của cụ B",
        "messageText": "đã được vệ sinh",
        "image": "assets/images/imagelogin.png"
      },
      {
        "id": 3,
        "title": "Phần mộ của cụ C",
        "messageText": "đã được lau sạch",
        "image": "assets/images/facebook.png"
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

  String getTitle(int index) {
    return _data![index]["title"];
  }

  String getMessageText(int index) {
    return _data![index]["messageText"];
  }

  String getImage(int index) {
    return _data![index]["image"];
  }

  int getLength() {
    return _data!.length;
  }
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Data _data = Data();
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Header(
            //   text: "",
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconBack(),
                IconNoti(numOf: 3),
              ],
            ),

            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Thông báo",
                  style: PrimaryFont.bold(24).copyWith(color: kColorBlack),
                ),
                Search(
                    onpress: (value) {},
                    text: "Tìm kiếm",
                    width: getProportionateScreenWidth(220)),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 16, top: 10, bottom: 10),
              child: Text(
                "Mới",
                style: PrimaryFont.bold(20).copyWith(color: kColorBlack),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 16, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(20), // Image radius
                              child: Image.asset(
                                "assets/images/facebook.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Phần mộ của cụ A",
                                    style: PrimaryFont.regular(20)
                                        .copyWith(color: kColorGrey),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenWidth(10),
                                  ),
                                  Text("đã được lau sạch",
                                      style: PrimaryFont.bold(15)
                                          .copyWith(color: kColorBlack)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 16, top: 10, bottom: 10),
              child: Text(
                "Trước đó",
                style: PrimaryFont.bold(20).copyWith(color: kColorBlack),
              ),
            ),
            Flexible(
              child: ListView.builder(
                primary: false,
                itemCount: _data.getLength(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 16, top: 10, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                ClipOval(
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(
                                        20), // Image radius
                                    child: Image.asset(
                                      "${_data.getImage(index)}",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(16),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "${_data.getTitle(index)}",
                                          style: PrimaryFont.regular(20)
                                              .copyWith(color: kColorGrey),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenWidth(10),
                                        ),
                                        Text("${_data.getMessageText(index)}",
                                            style: PrimaryFont.bold(15)
                                                .copyWith(color: kColorBlack)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

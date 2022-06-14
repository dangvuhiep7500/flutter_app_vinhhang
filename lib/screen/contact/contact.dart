import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/header_default.dart';
import 'package:flutter_app_vinhhang/screen/relative/components/search_field.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class Data {
  Map fetched_data = {
    "data": [
      {
        "id": 1,
        "name": "Nguyễn văn A",
        "messageText": "That's Great",
        "image": "assets/icons/google.png"
      },
      {
        "id": 2,
        "name": "Nguyễn văn B",
        "messageText": "Hello",
        "image": "assets/images/imagelogin.png"
      },
      {
        "id": 3,
        "name": "Nguyễn văn C",
        "messageText": "That's OK",
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

  String getName(int index) {
    return _data![index]["name"];
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

class _ContactScreenState extends State<ContactScreen>
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
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(12),
              vertical: getProportionateScreenWidth(14)),
          child: Column(
            children: [
              Header(
                text: "Liên hệ",
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Row(
                children: [
                  const AvatarUser(),
                  Search(onpress: (value) {}, text: "Tìm kiếm", width: 0.7)
                ],
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              Flexible(
                child: ListView.builder(
                  primary: false,
                  itemCount: _data.getLength(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(
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
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${_data.getName(index)}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            "${_data.getMessageText(index)}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold),
                                          ),
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
        ),
      ),
    );
  }
}

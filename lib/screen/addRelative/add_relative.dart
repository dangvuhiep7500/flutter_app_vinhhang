import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_img_footer.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_img_header.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_info.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_header_textfield.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_input_date.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_number_tomb.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_default.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../../../utils/theme.dart';

class AddRelative extends StatefulWidget {
  const AddRelative({
    Key? key,
  }) : super(key: key);

  @override
  State<AddRelative> createState() => _AddRelativeState();
}

class _AddRelativeState extends State<AddRelative>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _value = 0;
  DateTime? dateBirth;
  DateTime? dateDeath;
  File? imageFileHeader;
  File? imageFileFooter;
  String getTextBirth() {
    if (dateBirth == null) {
      return 'Chọn ngày';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateBirth!);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  String getTextDeath() {
    if (dateDeath == null) {
      return 'Chọn ngày';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateDeath!);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

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
                  text: "Thêm mới",
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
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(120)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const CardHeaderTextField(
                                textHint: "Quan hệ với chủ tài khoản",
                                height: 30,
                                horizontal: 80,
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: SizeConfig2.screenHeight * 0.0125,
                              ),
                              const CardHeaderTextField(
                                textHint: "Họ tên",
                                height: 30,
                                horizontal: 80,
                                fontSize: 12,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(25),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(60)),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: getProportionateScreenWidth(80),
                                        child: Text(
                                          "Giới tính",
                                          style: PrimaryFont.medium(15)
                                              .copyWith(color: kColorBlack),
                                        ),
                                      ),
                                      Radio(
                                        value: 1,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value as int;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Nam",
                                        style: PrimaryFont.regular(15)
                                            .copyWith(color: kColorBlack),
                                      ),
                                      Radio(
                                        value: 2,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value as int;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Nữ",
                                        style: PrimaryFont.regular(15)
                                            .copyWith(color: kColorBlack),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(35),
                                child: InputDate(
                                  text1: "Sinh ngày",
                                  text2: getTextBirth(),
                                  onpress: () {
                                    pickDateBirth(context);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(35),
                                child: InputDate(
                                  text1: "Mất ngày",
                                  text2: getTextDeath(),
                                  onpress: () {
                                    pickDateDeath(context);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(10)),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    "Mộ phần",
                                    style: PrimaryFont.bold(20)
                                        .copyWith(color: kColorBlack),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              CardAddInfo(
                                text1: "Tên nghĩa trang:",
                                textField: CardHeaderTextField(
                                  height: getProportionateScreenHeight(25),
                                  horizontal: getProportionateScreenWidth(15),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Row(
                                children: [
                                  const CardAddNumberTomb(
                                    text: "Số ô:",
                                  ),
                                  CardAddNumberTomb(
                                    left: getProportionateScreenWidth(40),
                                    text: "Số lô:",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(10)),
                                child: SizedBox(
                                  width: getProportionateScreenWidth(180),
                                  child: Text(
                                    "Di ảnh",
                                    style: PrimaryFont.bold(20)
                                        .copyWith(color: kColorBlack),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 60),
                                alignment: Alignment.centerLeft,
                                child: imageFileFooter == null
                                    ? Padding(
                                        padding: EdgeInsets.only(
                                            bottom: getProportionateScreenWidth(
                                                40)),
                                        child: IconButton(
                                          onPressed: () {
                                            _getFromGalleryFooter();
                                          },
                                          icon: Icon(
                                            Icons.add_photo_alternate,
                                            size:
                                                getProportionateScreenWidth(80),
                                          ),
                                        ),
                                      )
                                    : CardAddImageFooter(
                                        image: imageFileFooter!,
                                      ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(50)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right:
                                              getProportionateScreenWidth(50)),
                                      child: ButtonDefault(
                                        width: getProportionateScreenWidth(110),
                                        color: kColorRed,
                                        borderRadius: 1,
                                        text: "Hủy bỏ",
                                        onpress: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                    ButtonDefault(
                                      width: getProportionateScreenWidth(110),
                                      color: kColorGreen,
                                      borderRadius: 1,
                                      text: "Hoàn tất",
                                      onpress: () {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: const Text(
                                                'Thêm mới thành công'),
                                            backgroundColor:
                                                Colors.green.shade300,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: imageFileHeader == null
                          ? CardImageHeader(
                              onpress: _getFromGalleryHeader,
                              image: "assets/images/ImageDefault.jpg")
                          : SizedBox(
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenWidth * 0.3,
                              child: Image.file(imageFileHeader!),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future pickDateBirth(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: dateBirth ?? initialDate,
        firstDate: DateTime(DateTime.now().year - 150),
        lastDate: DateTime.now(),
        locale: const Locale("vi", "VN"),
        helpText: "Chọn ngày/tháng/năm");

    if (newDate == null) return;

    setState(() => dateBirth = newDate);
  }

  Future pickDateDeath(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: dateDeath ?? initialDate,
        firstDate: DateTime(DateTime.now().year - 150),
        lastDate: DateTime.now(),
        locale: const Locale("vi", "VN"),
        helpText: "Chọn ngày/tháng/năm");

    if (newDate == null) return;

    setState(() => dateDeath = newDate);
  }

  _getFromGalleryFooter() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFileFooter = File(pickedFile.path);
      });
    }
  }

  _getFromGalleryHeader() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFileHeader = File(pickedFile.path);
      });
    }
  }
}

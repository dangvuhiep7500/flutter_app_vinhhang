import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_img_footer.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_info.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_header_textfield.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_add_input_date.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/components/card_number_tomb.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/card_img_header.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/components/header_relative.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
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
                          padding: const EdgeInsets.only(top: 130),
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
                              Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      child: Text("Giới tính"),
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
                                    Text("Nam"),
                                    Radio(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value as int;
                                        });
                                      },
                                    ),
                                    Text("Nữ"),
                                  ],
                                ),
                              ),
                              InputDate(
                                text1: "Sinh ngày",
                                text2: getTextBirth(),
                                onpress: () {
                                  pickDateBirth(context);
                                },
                              ),
                              InputDate(
                                text1: "Mất ngày",
                                text2: getTextDeath(),
                                onpress: () {
                                  pickDateDeath(context);
                                },
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
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(20),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              const CardInfo(
                                text1: "Tên nghĩa trang:",
                                textField: CardHeaderTextField(
                                  height: 25,
                                  horizontal: 15,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              Row(
                                children: const [
                                  CardAddNumberTomb(
                                    text: "Số ô:",
                                  ),
                                  CardAddNumberTomb(
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    "Di ảnh",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(20),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenWidth(10),
                              ),
                              CardAddImageFooter(
                                  image: "assets/images/anh2.jpg"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CardImageHeader(image: "assets/images/anh2.jpg"),
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
}

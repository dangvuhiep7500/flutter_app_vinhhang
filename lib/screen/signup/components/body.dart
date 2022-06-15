import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/models/register_request_model.dart';
import 'package:flutter_app_vinhhang/screen/login/components/image_top_signupin.dart';
import 'package:flutter_app_vinhhang/screen/login/components/input_field.dart';
import 'package:flutter_app_vinhhang/screen/login/login_screen.dart';
import 'package:flutter_app_vinhhang/screen/signup/components/inline_cblogin.dart';
import 'package:flutter_app_vinhhang/services/api_service.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

import '../../../utils/size_config.dart';
import '../../../utils/theme.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  var userName = TextEditingController(text: "");
  var password = TextEditingController(text: "");
  var confirmpassword = TextEditingController(text: "");
  bool isApiCallProcess = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig2().init(context);
    return ProgressHUD(
      inAsyncCall: isApiCallProcess,
      opacity: 0.2,
      key: UniqueKey(),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: globalFormKey,
            child: Column(
              children: [
                const ImageTop(),
                SizedBox(
                  height: getProportionateScreenWidth(40),
                ),
                Column(
                  children: [
                    InputField(
                      text: "Tài khoản",
                      controller: userName,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Hãy nhập tài khoản';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(10),
                    ),
                    InputField(
                      text: "Mật khẩu",
                      controller: password,
                      obscuretext: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Hãy nhập mật khẩu';
                        } else if (value.length < 7) {
                          return ("Sử dụng 6 ký tự trở lên cho mật khẩu của bạn");
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputField(
                      text: "Nhập lại mật khẩu",
                      controller: confirmpassword,
                      obscuretext: true,
                      validator: (value) {
                        if (value != password.text) {
                          return 'Mật khẩu đã nhập không khớp. Hãy thử lại.';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kColorGreen,
                        onPrimary: kColorWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text("Đăng ký tài khoản",
                          style: PrimaryFont.medium(16)
                              .copyWith(color: kColorWhite)),
                      onPressed: () {
                        if (validateAndSave()) {
                          setState(() {
                            isApiCallProcess = true;
                          });

                          RegisterRequestModel model = RegisterRequestModel(
                            username: userName.text,
                            password: password.text,
                          );

                          APIService.register(model).then(
                            (response) {
                              setState(() {
                                isApiCallProcess = false;
                              });

                              if (response != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'Đăng kí thành công vui lòng đăng nhập'),
                                    backgroundColor: Colors.green.shade300,
                                  ),
                                );
                                Navigator.pushNamed(
                                  context,
                                  '/login',
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Tài khoản đã tồn tại'),
                                    backgroundColor: Colors.red.shade300,
                                  ),
                                );
                              }
                            },
                          );
                        }
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(20),
                    ),
                    InlineCombackLogin(
                      text: "Trở lại",
                      onpress: () {
                        Navigator.pushNamed(context, '/login');
                      },
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

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}

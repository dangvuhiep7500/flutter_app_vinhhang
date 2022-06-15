import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/data/models/login_request_model.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_default.dart';
import 'package:flutter_app_vinhhang/screen/login/components/image_top_signupin.dart';
import 'package:flutter_app_vinhhang/screen/login/components/inline_or.dart';
import 'package:flutter_app_vinhhang/screen/login/components/signin_FBGG.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_login.dart';
import 'package:flutter_app_vinhhang/screen/login/components/input_field.dart';
import 'package:flutter_app_vinhhang/screen/relative/relative_screen.dart';
import 'package:flutter_app_vinhhang/services/api_service.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  // TextEditingController? userName = TextEditingController(text: "admin");
  // TextEditingController? password = TextEditingController(text: "admin");
  var userName = TextEditingController(text: "admin");
  var password = TextEditingController(text: "admin123");
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ProgressHUD(
        inAsyncCall: isApiCallProcess,
        opacity: 0.2,
        key: UniqueKey(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: globalFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ImageTop(),
                  SizedBox(
                    height: getProportionateScreenWidth(40),
                  ),
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
                    obscuretext: hidePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Hãy nhập mật khẩu';
                      }
                      return null;
                    },
                    sufixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      color: Colors.black.withOpacity(0.7),
                      icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  ButtonLogin(
                    text: "Đăng nhập",
                    press: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/home',
                        (route) => false,
                      );
                      // Call API Login
                      // if (validateAndSave()) {
                      //   setState(() {
                      //     isApiCallProcess = true;
                      //   });
                      //   LoginRequestModel model = LoginRequestModel(
                      //     username: userName.text,
                      //     password: password.text,
                      //   );
                      //   APIService.login(model).then(
                      //     (response) {
                      //       setState(() {
                      //         isApiCallProcess = false;
                      //       });
                      //       if (response == true) {
                      //         Navigator.pushNamedAndRemoveUntil(
                      //           context,
                      //           '/home',
                      //           (route) => false,
                      //         );
                      //       } else {
                      //         ScaffoldMessenger.of(context).showSnackBar(
                      //           SnackBar(
                      //             content: const Text(
                      //                 'Tài khoản hoặc mật khẩu không đúng'),
                      //             backgroundColor: Colors.red.shade300,
                      //           ),
                      //         );
                      //       }
                      //     },
                      //   );
                      // }
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(15),
                  ),
                  const SignFBGG(),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  const InlineOr(),
                  SizedBox(
                    height: getProportionateScreenWidth(15),
                  ),
                  ButtonDefault(
                    color: kColorGreen,
                    text: "Đăng kí tài khoản",
                    borderRadius: 10,
                    onpress: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                  TextButton(
                    style:
                        TextButton.styleFrom(textStyle: PrimaryFont.medium(15)),
                    onPressed: () {},
                    child: Text('Quên mật khẩu?',
                        style: PrimaryFont.regular(15)
                            .copyWith(color: kColorGrey)),
                  ),
                ],
              ),
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

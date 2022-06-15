import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/signup/components/inline_cblogin.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

class Religion extends StatelessWidget {
  const Religion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(100),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: getProportionateScreenWidth(150),
              child: const AspectRatio(
                aspectRatio: 1 / 1,
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill, // use this
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Text(
              "Chọn tôn giáo của bạn",
              style: PrimaryFont.regular(15),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenWidth(140),
                              width: getProportionateScreenWidth(140),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/phatgiao.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenWidth(10),
                            ),
                            Text(
                              "Phật giáo",
                              style: PrimaryFont.regular(15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenWidth(140),
                              width: getProportionateScreenWidth(140),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/tongiao.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenWidth(10),
                            ),
                            Text(
                              "Tôn giáo",
                              style: PrimaryFont.regular(15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            InlineCombackLogin(
                text: "Khác",
                onpress: () {
                  Navigator.pushNamed(context, '/home');
                })
          ],
        ),
      ),
    );
  }
}

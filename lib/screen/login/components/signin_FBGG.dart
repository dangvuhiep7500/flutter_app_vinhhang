import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/login/components/button_icon.dart';

class SignFBGG extends StatelessWidget {
  const SignFBGG({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonIcon(
          urlimage: 'assets/icons/google.png',
          press: () {
            print("google");
          },
        ),
        ButtonIcon(
          urlimage: 'assets/images/facebook.png',
          press: () {
            print("facebook");
          },
        ),
      ],
    );
  }
}

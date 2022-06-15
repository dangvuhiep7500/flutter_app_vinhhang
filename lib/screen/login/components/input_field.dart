import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/size_config.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.text,
    this.sufixIcon,
    this.obscuretext = false,
    this.controller,
    required this.validator,
  }) : super(key: key);
  final String text;
  final Widget? sufixIcon;
  final bool obscuretext;
  final FormFieldValidator validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
      child: TextFormField(
        validator: validator,
        style: PrimaryFont.regular(16),
        obscureText: obscuretext,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10),
            horizontal: getProportionateScreenWidth(10),
          ),
          border: const OutlineInputBorder(),
          labelText: text,
          hintStyle: const TextStyle(color: kColorBlack),
          suffixIcon: sufixIcon,
        ),
      ),
    );
  }
}

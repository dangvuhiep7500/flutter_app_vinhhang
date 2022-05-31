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
  }) : super(key: key);
  final String text;
  final Widget? sufixIcon;
  final bool obscuretext;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        style: const TextStyle(fontSize: 15),
        obscureText: obscuretext,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text,
          hintStyle: const TextStyle(color: kColorGrey),
          suffixIcon: sufixIcon,
        ),
      ),
    );
  }
}

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
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        validator: validator,
        style: const TextStyle(fontSize: 15),
        obscureText: obscuretext,
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          border: const OutlineInputBorder(),
          labelText: text,
          hintStyle: const TextStyle(color: kColorGrey),
          suffixIcon: sufixIcon,
        ),
      ),
    );
  }
}

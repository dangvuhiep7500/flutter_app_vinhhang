import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class InlineCombackLogin extends StatelessWidget {
  const InlineCombackLogin({
    Key? key,
    required this.text,
    required this.onpress,
  }) : super(key: key);
  final String text;
  final GestureTapCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Expanded(
            child: Divider(
          indent: 10.0,
          endIndent: 10.0,
          thickness: 1,
          color: kColorGrey,
        )),
        TextButton(
            child: Text(text,
                style: PrimaryFont.regular(18).copyWith(color: kColorBlack)),
            // onPressed: () {
            //   Navigator.pushNamed(context, '/login');
            // }),
            onPressed: onpress),
        const Expanded(
            child: Divider(
          indent: 10.0,
          endIndent: 10.0,
          thickness: 1,
          color: kColorGrey,
        )),
      ],
    );
  }
}

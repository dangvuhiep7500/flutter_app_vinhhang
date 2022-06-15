import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class InlineCombackLogin extends StatelessWidget {
  const InlineCombackLogin({
    Key? key,
  }) : super(key: key);

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
            child: Text("Trở lại",
                style: PrimaryFont.medium(20).copyWith(color: kColorGrey)),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
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

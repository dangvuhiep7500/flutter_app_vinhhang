import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/utils/theme.dart';

import '../../../utils/size_config.dart';

class InlineOr extends StatelessWidget {
  const InlineOr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig2().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Divider(
          indent: SizeConfig2.screenWidth * 0.025,
          endIndent: SizeConfig2.screenWidth * 0.025,
          thickness: 1,
          color: Colors.grey,
        )),
        const Text(
          "Hoặc",
          style: TextStyle(color: kColorGrey),
        ),
        Expanded(
            child: Divider(
          indent: SizeConfig2.screenWidth * 0.025,
          endIndent: SizeConfig2.screenWidth * 0.025,
          thickness: 1,
          color: kColorGrey,
        )),
      ],
    );
  }
}

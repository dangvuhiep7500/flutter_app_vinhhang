import 'package:flutter/material.dart';

class InlineOr extends StatelessWidget {
  const InlineOr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
            child: Divider(
          indent: 20.0,
          endIndent: 20.0,
          thickness: 1,
          color: Colors.grey,
        )),
        Text(
          "Hoặc",
          style: TextStyle(color: Colors.grey),
        ),
        Expanded(
            child: Divider(
          indent: 20.0,
          endIndent: 20.0,
          thickness: 1,
          color: Colors.grey,
        )),
      ],
    );
  }
}

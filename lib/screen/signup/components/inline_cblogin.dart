import 'package:flutter/material.dart';

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
          color: Colors.grey,
        )),
        TextButton(
            child: const Text(
              "Trở lại",
              style: TextStyle(color: Colors.grey),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
        const Expanded(
            child: Divider(
          indent: 10.0,
          endIndent: 10.0,
          thickness: 1,
          color: Colors.grey,
        )),
      ],
    );
  }
}

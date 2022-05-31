import 'package:flutter/material.dart';

class ImageTop extends StatelessWidget {
  const ImageTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 16 / 9,
      child: Image(
        image: AssetImage('assets/images/imagelogin.png'),
        fit: BoxFit.fill, // use this
      ),
    );
  }
}

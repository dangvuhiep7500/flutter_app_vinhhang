import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
    required this.text,
    required this.onpress,
    required this.borderRadius,
    this.height,
    this.width,
    required this.color,
  }) : super(key: key);
  final String text;
  final GestureTapCallback onpress;
  final double borderRadius;
  final double? height;
  final double? width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: kColorWhite, fontWeight: FontWeight.normal, fontSize: 16),
        ),
        onPressed: onpress,
      ),
    );
  }
}

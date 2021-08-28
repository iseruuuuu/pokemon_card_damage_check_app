import 'package:flutter/material.dart';

class OtherCardWidget extends StatelessWidget {
  const OtherCardWidget({
    Key? key,
    required this.mediaWidth,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final double mediaWidth;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: mediaWidth / 5.5,
        height: mediaWidth / 2.5,
        color: Colors.green,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OtherCardWidget extends StatelessWidget {
  const OtherCardWidget({
    Key? key,
    required this.mediaWidth,
    required this.text,
    required this.onTap,
    required this.burn,
    required this.poison,
  }) : super(key: key);

  final double mediaWidth;
  final String text;
  final Function() onTap;
  final String burn;
  final String poison;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: mediaWidth / 5.5,
        height: mediaWidth / 2.5,
        color: Colors.green,
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Text(
                burn,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                poison,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

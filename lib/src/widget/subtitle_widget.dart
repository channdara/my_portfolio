import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget(
    this.data, {
    super.key,
    this.textAlign,
  });

  final String data;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(color: Colors.grey, fontSize: 16.0),
      textAlign: textAlign,
    );
  }
}

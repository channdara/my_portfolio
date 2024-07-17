import 'package:flutter/material.dart';

import '../common/app_text_style.dart';

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
      style: AppTextStyle.s16Grey,
      textAlign: textAlign,
    );
  }
}

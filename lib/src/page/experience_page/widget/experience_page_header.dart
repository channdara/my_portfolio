import 'package:flutter/material.dart';

import '../../../widget/header_widget.dart';

class ExperiencePageHeader extends StatelessWidget {
  const ExperiencePageHeader({
    super.key,
    this.textAlign,
    this.crossAxisAlignment,
  });

  final TextAlign? textAlign;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
      title: ('My', 'Experience'),
      content:
          'Experienced mobile app developer dedicated to building innovative and efficient mobile solutions.',
      textAlign: textAlign,
      crossAxisAlignment: crossAxisAlignment,
    );
  }
}

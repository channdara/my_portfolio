import 'package:flutter/material.dart';

import '../../../widget/subtitle_widget.dart';

class ExperiencePageSubtitle extends StatelessWidget {
  const ExperiencePageSubtitle({super.key, this.textAlign});

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SubtitleWidget(
      'Experienced mobile app developer dedicated to building innovative and efficient mobile solutions.',
      textAlign: textAlign,
    );
  }
}

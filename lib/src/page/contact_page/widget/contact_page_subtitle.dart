import 'package:flutter/material.dart';

import '../../../widget/subtitle_widget.dart';

class ContactPageSubtitle extends StatelessWidget {
  const ContactPageSubtitle({super.key, this.textAlign});

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SubtitleWidget(
      "Interested in working together or have any questions? Drop me a message! I'm always excited to connect with new people and explore potential collaborations in the world of mobile app development.",
      textAlign: textAlign,
    );
  }
}

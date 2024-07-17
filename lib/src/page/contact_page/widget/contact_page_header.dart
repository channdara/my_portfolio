import 'package:flutter/material.dart';

import '../../../widget/header_widget.dart';

class ContactPageHeader extends StatelessWidget {
  const ContactPageHeader({
    super.key,
    this.textAlign,
    this.crossAxisAlignment,
  });

  final TextAlign? textAlign;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
      title: ('Contact', 'Me'),
      content:
          "Interested in working together or have any questions? Drop me a message! I'm always excited to connect with new people and explore potential collaborations in the world of mobile app development.",
      textAlign: textAlign,
      crossAxisAlignment: crossAxisAlignment,
    );
  }
}

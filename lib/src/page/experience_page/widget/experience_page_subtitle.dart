import 'package:flutter/material.dart';

class ExperiencePageSubtitle extends StatelessWidget {
  const ExperiencePageSubtitle({super.key, this.textAlign});

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Experienced mobile app developer dedicated to building innovative and efficient mobile solutions.',
      style: const TextStyle(color: Colors.grey, fontSize: 16.0),
      textAlign: textAlign,
    );
  }
}

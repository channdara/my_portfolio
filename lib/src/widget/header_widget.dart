import 'package:flutter/material.dart';

import 'subtitle_widget.dart';
import 'title_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.title,
    required this.content,
    this.textAlign,
    this.crossAxisAlignment,
  });

  final (String, String) title;
  final String content;
  final TextAlign? textAlign;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: [
          TitleWidget(data: title),
          const SizedBox(height: 8.0),
          SubtitleWidget(
            content,
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}

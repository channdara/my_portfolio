import 'package:flutter/material.dart';

import '../../../common/app_text_style.dart';

class ContactPageItem extends StatelessWidget {
  const ContactPageItem({
    super.key,
    required this.label,
    required this.content,
  });

  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label:    ',
            style: AppTextStyle.s16Accent,
          ),
          Expanded(
            child: Text(
              content,
              style: AppTextStyle.s16,
            ),
          ),
        ],
      ),
    );
  }
}

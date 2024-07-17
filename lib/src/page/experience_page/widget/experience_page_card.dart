import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';
import '../../../common/app_text_style.dart';
import '../../../model/experience.dart';

class ExperiencePageCard extends StatelessWidget {
  const ExperiencePageCard({
    super.key,
    required this.experience,
    this.primary = false,
  });

  final Experience experience;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(phoneSpacing),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: borderRadiusNormal,
        border: primary ? Border.all(color: accentColor) : null,
      ),
      child: Column(
        children: [
          Text(
            experience.date,
            style: AppTextStyle.s14,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: phoneSpacing),
          Text(
            experience.title,
            style: AppTextStyle.s16BoldAccent,
            textAlign: TextAlign.center,
          ),
          Text(
            experience.subtitle,
            style: AppTextStyle.s14Grey,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: phoneSpacing),
          Text(
            experience.description,
            style: AppTextStyle.s14,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}

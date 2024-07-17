import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';
import '../../../common/app_text_style.dart';
import '../../../model/project.dart';
import 'project_store_listing.dart';

class ProjectPageCard extends StatelessWidget {
  const ProjectPageCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: borderRadiusNormal,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(phoneSpacing),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: borderRadiusSmall,
                ),
                child: Image.network(
                  project.imageUrl ?? '',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, trace) => const SizedBox(),
                ),
              ),
            ),
            const SizedBox(height: phoneSpacing),
            Text(
              project.name,
              style: AppTextStyle.s16BoldAccent,
              textAlign: TextAlign.center,
            ),
            Text(
              project.tag,
              style: AppTextStyle.s14Grey,
              textAlign: TextAlign.center,
            ),
            if (project.showStoreListing)
              ProjectStoreListing(
                project: project,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            const SizedBox(height: phoneSpacing),
            Text(
              project.description,
              style: AppTextStyle.s14,
            ),
          ],
        ),
      ),
    );
  }
}

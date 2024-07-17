import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';
import '../../../common/app_text_style.dart';
import '../../../model/project.dart';
import 'project_store_listing.dart';

class ProjectPageCardPhone extends StatelessWidget {
  const ProjectPageCardPhone({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(phoneSpacing),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: borderRadiusNormal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
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
              const SizedBox(width: phoneSpacing),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: phoneSpacing),
          Text(
            project.description,
            style: AppTextStyle.s14,
          ),
        ],
      ),
    );
  }
}

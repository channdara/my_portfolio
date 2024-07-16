import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../project_page_data.dart';
import 'project_store_listing.dart';

class ProjectPageCardPhone extends StatelessWidget {
  const ProjectPageCardPhone({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: phoneSpacing),
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
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      project.tag,
                      style: const TextStyle(color: Colors.grey),
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
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

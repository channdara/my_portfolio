import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../project_page_data.dart';
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
        padding: const EdgeInsets.all(32.0),
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
            const SizedBox(height: 32.0),
            Text(
              project.name,
              style: const TextStyle(
                fontSize: 16.0,
                color: accentColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4.0),
            Text(
              project.tag,
              style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            if (project.showStoreListing)
              ProjectStoreListing(
                project: project,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            const SizedBox(height: 16.0),
            Text(
              project.description,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

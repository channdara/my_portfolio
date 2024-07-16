import 'package:flutter/material.dart';

import '../project_page_data.dart';
import '../widget/project_page_card.dart';
import '../widget/project_page_subtitle.dart';
import '../widget/project_page_title.dart';

class ProjectPageWebsite extends StatelessWidget {
  const ProjectPageWebsite({super.key, required this.spacing});

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: spacing / 2),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: spacing),
            child: const ProjectPageTitle(),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: spacing),
            child: const ProjectPageSubtitle(textAlign: TextAlign.center),
          ),
          const SizedBox(height: 32.0),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.fromLTRB(spacing, 0.0, spacing, spacing / 2),
              itemCount: Project.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 32.0,
                crossAxisSpacing: 32.0,
                childAspectRatio: 8 / 16,
              ),
              itemBuilder: (context, index) {
                final project = Project.items[index];
                return ProjectPageCard(project: project);
              },
            ),
          ),
        ],
      ),
    );
  }
}

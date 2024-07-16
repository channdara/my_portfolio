import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../project_page_data.dart';
import '../widget/project_page_card_phone.dart';
import '../widget/project_page_subtitle.dart';
import '../widget/project_page_title.dart';

class ProjectPagePhone extends StatelessWidget {
  const ProjectPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(
        phoneSpacing,
        phoneSpacing,
        phoneSpacing,
        0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProjectPageTitle(),
          const SizedBox(height: 8.0),
          const ProjectPageSubtitle(),
          const SizedBox(height: phoneSpacing),
          ...Project.items.map((project) {
            return ProjectPageCardPhone(project: project);
          }),
        ],
      ),
    );
  }
}

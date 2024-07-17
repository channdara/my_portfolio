import 'package:flutter/material.dart';

import '../../common/app_common_data.dart';
import '../../model/project.dart';
import '../../widget/page_builder_widget.dart';
import '../../widget/phone_body_widget.dart';
import '../../widget/website_body_widget.dart';
import 'widget/project_page_card.dart';
import 'widget/project_page_card_phone.dart';
import 'widget/project_page_header.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return PageBuilderWidget(
      phone: PhoneBodyWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProjectPageHeader(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            const SizedBox(height: phoneSpacing),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: Project.items.length,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(height: phoneSpacing);
              },
              itemBuilder: (context, index) {
                final project = Project.items[index];
                return ProjectPageCardPhone(project: project);
              },
            ),
          ],
        ),
      ),
      website: WebsiteBodyWidget(
        child: Column(
          children: [
            const ProjectPageHeader(textAlign: TextAlign.center),
            const SizedBox(height: phoneSpacing),
            GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: Project.items.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 900 ? 3 : 4,
                mainAxisSpacing: phoneSpacing,
                crossAxisSpacing: phoneSpacing,
                childAspectRatio: 8 / 16,
              ),
              itemBuilder: (context, index) {
                final project = Project.items[index];
                return ProjectPageCard(project: project);
              },
            ),
          ],
        ),
      ),
    );
  }
}

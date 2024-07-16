import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../widget/page_builder_widget.dart';
import 'component/project_page_phone.dart';
import 'component/project_page_website.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return const PageBuilderWidget(
      phone: ProjectPagePhone(),
      tablet: ProjectPageWebsite(spacing: tabletSpacing),
      website: ProjectPageWebsite(spacing: websiteSpacing),
    );
  }
}

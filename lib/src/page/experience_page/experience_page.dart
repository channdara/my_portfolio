import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../base/base_page_builder.dart';
import 'component/experience_page_phone.dart';
import 'component/experience_page_website.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return const BasePageBuilder(
      phone: ExperiencePagePhone(),
      tablet: ExperiencePageWebsite(spacing: tabletSpacing),
      website: ExperiencePageWebsite(spacing: websiteSpacing),
    );
  }
}

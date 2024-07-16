import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../widget/page_builder_widget.dart';
import 'component/about_page_phone.dart';
import 'component/about_page_website.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return const PageBuilderWidget(
      phone: AboutPagePhone(),
      tablet: AboutPageWebsite(spacing: tabletSpacing),
      website: AboutPageWebsite(spacing: websiteSpacing),
    );
  }
}

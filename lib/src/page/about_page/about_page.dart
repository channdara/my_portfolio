import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../base/base_page_builder.dart';
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
    return const BasePageBuilder(
      phone: AboutPagePhone(),
      tablet: AboutPageWebsite(spacing: tabletSpacing),
      website: AboutPageWebsite(spacing: websiteSpacing),
    );
  }
}

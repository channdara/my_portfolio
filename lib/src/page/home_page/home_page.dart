import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../widget/page_builder_widget.dart';
import 'component/home_page_phone.dart';
import 'component/home_page_website.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const PageBuilderWidget(
      phone: HomePagePhone(),
      tablet: HomePageWebsite(spacing: tabletSpacing),
      website: HomePageWebsite(spacing: websiteSpacing),
    );
  }
}

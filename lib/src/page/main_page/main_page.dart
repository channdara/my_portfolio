import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../base/base_page_builder.dart';
import 'component/main_page_phone.dart';
import 'component/main_page_website.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: tabLength,
      initialIndex: tabInitialIndex,
      child: BasePageBuilder(
        phone: MainPagePhone(),
        tablet: MainPageWebsite(spacing: tabletSpacing),
        website: MainPageWebsite(spacing: websiteSpacing),
      ),
    );
  }
}

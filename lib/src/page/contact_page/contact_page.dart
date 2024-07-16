import 'package:flutter/material.dart';

import '../../../main_data.dart';
import '../../widget/page_builder_widget.dart';
import 'component/contact_page_phone.dart';
import 'component/contact_page_website.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const PageBuilderWidget(
      phone: ContactPagePhone(),
      tablet: ContactPageWebsite(spacing: tabletSpacing),
      website: ContactPageWebsite(spacing: websiteSpacing),
    );
  }
}

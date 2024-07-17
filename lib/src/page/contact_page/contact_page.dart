import 'package:flutter/material.dart';

import '../../common/app_common_data.dart';
import '../../common/app_text_style.dart';
import '../../model/contact.dart';
import '../../util/launcher_util.dart';
import '../../widget/page_builder_widget.dart';
import '../../widget/phone_body_widget.dart';
import '../../widget/website_body_widget.dart';
import 'widget/contact_page_header.dart';
import 'widget/contact_page_item.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return PageBuilderWidget(
      phone: PhoneBodyWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ContactPageHeader(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            const SizedBox(height: phoneSpacing),
            const Text(
              'My Information',
              style: AppTextStyle.s18Bold,
            ),
            const SizedBox(height: 8.0),
            const ContactPageItem(
              label: 'Address',
              content: 'Thmei Village, Ta Khmau Town, Kandal Province.',
            ),
            const ContactPageItem(
              label: 'Phone',
              content: '+855 92 361 916\n+855 81 776 503',
            ),
            const ContactPageItem(
              label: 'Email',
              content: 'eamchanndara@gmail.com',
            ),
            const SizedBox(height: phoneSpacing - 8.0),
            const Text(
              'Social Media',
              style: AppTextStyle.s18Bold,
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: Contact.items.map((e) {
                const base = 45.0;
                const padding = 4.0;
                const size = base - padding;
                return InkWell(
                  onTap: () {
                    LauncherUtil.open(e.url);
                  },
                  borderRadius: BorderRadius.circular(base),
                  child: Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Image.asset(
                      e.imageAsset,
                      height: size,
                      width: size,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      website: WebsiteBodyWidget(
        child: Column(
          children: [
            const ContactPageHeader(textAlign: TextAlign.center),
            const SizedBox(height: phoneSpacing),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'My Information',
                        style: AppTextStyle.s18Bold,
                      ),
                      SizedBox(height: 8.0),
                      ContactPageItem(
                        label: 'Address',
                        content:
                            'Thmei Village, Ta Khmau Town, Kandal Province.',
                      ),
                      ContactPageItem(
                        label: 'Phone',
                        content: '+855 92 361 916\n+855 81 776 503',
                      ),
                      ContactPageItem(
                        label: 'Email',
                        content: 'eamchanndara@gmail.com',
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: phoneSpacing),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Social Media',
                        style: AppTextStyle.s18Bold,
                      ),
                      const SizedBox(height: 8.0),
                      Wrap(
                        spacing: 16.0,
                        runSpacing: 16.0,
                        alignment: WrapAlignment.center,
                        children: Contact.items.map((e) {
                          const base = 50.0;
                          const padding = 4.0;
                          const size = base - padding;
                          return InkWell(
                            onTap: () {
                              LauncherUtil.openNewTap(e.url);
                            },
                            borderRadius: BorderRadius.circular(base),
                            child: Padding(
                              padding: const EdgeInsets.all(padding),
                              child: Image.asset(
                                e.imageAsset,
                                height: size,
                                width: size,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

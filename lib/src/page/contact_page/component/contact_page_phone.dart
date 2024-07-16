import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../../../util/launcher_util.dart';
import '../contact_page_data.dart';
import '../widget/contact_page_item.dart';
import '../widget/contact_page_subtitle.dart';
import '../widget/contact_page_title.dart';

class ContactPagePhone extends StatelessWidget {
  const ContactPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(phoneSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContactPageTitle(),
          const SizedBox(height: 8.0),
          const ContactPageSubtitle(),
          const SizedBox(height: phoneSpacing),
          const Text(
            'My Information',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
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
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: Contact.items.map((e) {
              return InkWell(
                onTap: () {
                  LauncherUtil.open(e.url);
                },
                borderRadius: BorderRadius.circular(50.0),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    e.imageAsset,
                    height: 46.0,
                    width: 46.0,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

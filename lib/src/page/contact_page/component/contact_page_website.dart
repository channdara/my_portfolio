import 'package:flutter/material.dart';

import '../../../util/launcher_util.dart';
import '../contact_page_data.dart';
import '../widget/contact_page_item.dart';
import '../widget/contact_page_subtitle.dart';
import '../widget/contact_page_title.dart';

class ContactPageWebsite extends StatelessWidget {
  const ContactPageWebsite({super.key, required this.spacing});

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: spacing,
        vertical: spacing / 2,
      ),
      child: Column(
        children: [
          const ContactPageTitle(),
          const SizedBox(height: 8.0),
          const ContactPageSubtitle(textAlign: TextAlign.center),
          const SizedBox(height: 32.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  children: [
                    Text(
                      'My Information',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 32.0),
                    ContactPageItem(
                      label: 'Address',
                      content: 'Thmei Village, Ta Khmau Town, Kandal Province.',
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
              const SizedBox(width: 32.0),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Social Media',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    Wrap(
                      spacing: 24.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.center,
                      children: Contact.items.map((e) {
                        return InkWell(
                          onTap: () {
                            LauncherUtil.openNewTap(e.url);
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

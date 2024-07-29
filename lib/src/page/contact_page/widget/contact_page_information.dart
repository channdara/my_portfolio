import 'package:flutter/material.dart';

import '../../../common/app_text_style.dart';
import 'contact_page_item.dart';

class ContactPageInformation extends StatelessWidget {
  const ContactPageInformation({super.key, required this.crossAxisAlignment});

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: const [
          Text(
            'My Information',
            style: AppTextStyle.s18Bold,
          ),
          SizedBox(height: 8.0),
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
    );
  }
}

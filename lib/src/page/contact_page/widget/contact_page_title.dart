import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../../../widget/title_widget.dart';

class ContactPageTitle extends StatelessWidget {
  const ContactPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleWidget(
      data: ('Contact', 'Me'),
      colors: (Colors.white, accentColor),
    );
  }
}

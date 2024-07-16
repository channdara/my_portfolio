import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../../../widget/title_widget.dart';

class ExperiencePageTitle extends StatelessWidget {
  const ExperiencePageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleWidget(
      data: ('My', 'Experience'),
      colors: (accentColor, Colors.white),
    );
  }
}

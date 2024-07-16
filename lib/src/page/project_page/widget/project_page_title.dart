import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../../../widget/title_widget.dart';

class ProjectPageTitle extends StatelessWidget {
  const ProjectPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleWidget(
      data: ('All', 'Projects'),
      colors: (accentColor, Colors.white),
    );
  }
}

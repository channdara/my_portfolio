import 'package:flutter/material.dart';

import '../../../widget/header_widget.dart';

class ProjectPageHeader extends StatelessWidget {
  const ProjectPageHeader({
    super.key,
    this.textAlign,
    this.crossAxisAlignment,
  });

  final TextAlign? textAlign;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
      title: ('All', 'Projects'),
      content:
          'Explore my portfolio of innovative mobile applications, showcasing my experience in design, functionality, and user experience.',
      textAlign: textAlign,
      crossAxisAlignment: crossAxisAlignment,
    );
  }
}

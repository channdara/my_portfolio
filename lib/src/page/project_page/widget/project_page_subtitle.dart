import 'package:flutter/material.dart';

import '../../../widget/subtitle_widget.dart';

class ProjectPageSubtitle extends StatelessWidget {
  const ProjectPageSubtitle({super.key, this.textAlign});

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SubtitleWidget(
      'Explore my portfolio of innovative mobile applications, showcasing my experience in design, functionality, and user experience.',
      textAlign: textAlign,
    );
  }
}

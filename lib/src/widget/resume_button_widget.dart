import 'package:flutter/material.dart';

import '../common/app_common_data.dart';
import '../common/app_text_style.dart';
import '../util/launcher_util.dart';

class ResumeButtonWidget extends StatelessWidget {
  const ResumeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        LauncherUtil.openNewTap(
          'https://firebasestorage.googleapis.com/v0/b/eam-channdara-portfolio.appspot.com/o/Resume%20-%20Eam%20Channdara.pdf?alt=media&token=bc326fdf-340c-45ea-a9f6-a3e6631e888c',
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: accentColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 16.0,
        ),
      ),
      child: const Text(
        'MyPortfolio().generateResume().open();',
        style: AppTextStyle.s18Primary,
      ),
    );
  }
}

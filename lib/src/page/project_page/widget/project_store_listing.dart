import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../../../util/launcher_util.dart';
import '../project_page_data.dart';

class ProjectStoreListing extends StatelessWidget {
  const ProjectStoreListing({
    super.key,
    required this.project,
    required this.mainAxisAlignment,
  });

  final Project project;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          if (project.playStoreUrl != null)
            InkWell(
              onTap: () {
                LauncherUtil.openNewTap(project.playStoreUrl);
              },
              child: Container(
                height: 32.0,
                width: 32.0,
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: borderRadiusTiny,
                ),
                child: Image.asset('assets/image/img_google_play.png'),
              ),
            ),
          const SizedBox(width: 12.0),
          if (project.appStoreUrl != null)
            InkWell(
              onTap: () {
                LauncherUtil.openNewTap(project.appStoreUrl);
              },
              child: Container(
                height: 32.0,
                width: 32.0,
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: borderRadiusTiny,
                ),
                child: Image.asset('assets/image/img_apple_store.png'),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';
import '../../../common/app_text_style.dart';

class MainPageTitle extends StatelessWidget {
  const MainPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: 1,
      style: AppTextStyle.s22Bold,
      overflow: TextOverflow.ellipsis,
      TextSpan(
        children: [
          TextSpan(
            text: 'EAM ',
            style: const TextStyle(color: accentColor),
            recognizer: TapGestureRecognizer()..onTap = () => _onTap(context),
          ),
          TextSpan(
            text: 'Channdara',
            recognizer: TapGestureRecognizer()..onTap = () => _onTap(context),
          ),
        ],
      ),
    );
  }

  void _onTap(BuildContext context) {
    DefaultTabController.of(context).animateTo(0);
  }
}

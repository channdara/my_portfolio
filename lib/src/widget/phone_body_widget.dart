import 'package:flutter/material.dart';

import '../common/app_common_data.dart';

class PhoneBodyWidget extends StatelessWidget {
  const PhoneBodyWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(phoneSpacing),
      child: child,
    );
  }
}

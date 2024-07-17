import 'package:flutter/material.dart';

import '../common/app_common_data.dart';

class WebsiteBodyWidget extends StatelessWidget {
  const WebsiteBodyWidget({
    super.key,
    required this.child,
    this.bodyFlex = 8,
    this.verticalPadding = tabletSpacing,
  });

  final Widget child;
  final int bodyFlex;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: Row(
        children: [
          const Expanded(child: SizedBox()),
          Expanded(
            flex: bodyFlex,
            child: child,
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}

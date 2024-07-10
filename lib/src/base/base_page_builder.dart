import 'package:flutter/material.dart';

class BasePageBuilder extends StatelessWidget {
  const BasePageBuilder({
    super.key,
    required this.phone,
    required this.tablet,
    required this.website,
  });

  final Widget phone;
  final Widget tablet;
  final Widget website;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.constrainWidth();
        if (width < 600) return phone;
        if (width < 900) return tablet;
        return website;
      },
    );
  }
}

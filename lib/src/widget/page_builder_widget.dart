import 'package:flutter/material.dart';

class PageBuilderWidget extends StatelessWidget {
  const PageBuilderWidget({
    super.key,
    required this.phone,
    required this.website,
  });

  final Widget phone;
  final Widget website;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.constrainWidth();
        final child = width < 600 ? phone : website;
        return GestureDetector(
          onTap: FocusManager.instance.primaryFocus?.unfocus,
          child: child,
        );
      },
    );
  }
}

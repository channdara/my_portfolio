import 'package:flutter/material.dart';

import '../../../../main_data.dart';

class HomePageAvatar extends StatelessWidget {
  const HomePageAvatar({
    super.key,
    required this.imageSizeFactor,
    this.margin,
  });

  final EdgeInsetsGeometry? margin;
  final double imageSizeFactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / imageSizeFactor;
    final spacing = 4.0 * imageSizeFactor;
    return Container(
      height: size,
      width: size,
      margin: margin,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.only(left: spacing, top: spacing),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              border: Border.all(color: extraColor, width: imageSizeFactor),
            ),
          ),
          Card(
            color: Colors.grey,
            margin: EdgeInsets.only(right: spacing, bottom: spacing),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            child: Image.asset(
              'assets/image/img_avatar.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';

class AboutPageAvatar extends StatelessWidget {
  const AboutPageAvatar({
    super.key,
    required this.imageSizeFactor,
    this.margin,
  });

  final EdgeInsetsGeometry? margin;
  final double imageSizeFactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / imageSizeFactor;
    final spacing = imageSizeFactor * 3;
    return Container(
      height: size,
      width: size,
      margin: margin,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.only(right: spacing, top: spacing),
            decoration: BoxDecoration(
              borderRadius: borderRadiusNormal,
              border: Border.all(color: accentColor, width: imageSizeFactor),
            ),
          ),
          Card(
            color: Colors.grey,
            margin: EdgeInsets.only(left: spacing, bottom: spacing),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(borderRadius: borderRadiusNormal),
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

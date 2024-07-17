import 'package:flutter/material.dart';

import '../common/app_common_data.dart';
import '../common/app_text_style.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.data,
  });

  final (String, String) data;

  (Color, Color) get _getColor {
    return data.$1.length > data.$2.length
        ? (Colors.white, accentColor)
        : (accentColor, Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: data.$1,
            style: AppTextStyle.s22Bold.copyWith(color: _getColor.$1),
          ),
          TextSpan(
            text: ' ${data.$2}',
            style: AppTextStyle.s22Bold.copyWith(color: _getColor.$2),
          ),
        ],
      ),
    );
  }
}

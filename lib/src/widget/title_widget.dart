import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.data,
    required this.colors,
  });

  final (String, String) data;
  final (Color, Color) colors;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: data.$1,
            style: TextStyle(
              color: colors.$1,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' ${data.$2}',
            style: TextStyle(
              color: colors.$2,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

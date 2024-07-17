import 'package:flutter/material.dart';

import 'app_common_data.dart';

mixin AppTextStyle {
  static const TextStyle s22 = TextStyle(fontSize: 22.0);
  static const TextStyle s22Bold = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle s20 = TextStyle(fontSize: 20.0);
  static const TextStyle s20Bold = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle s18 = TextStyle(fontSize: 18.0);
  static const TextStyle s18Bold = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle s18Accent = TextStyle(
    fontSize: 18.0,
    color: accentColor,
  );

  static const TextStyle s16 = TextStyle(fontSize: 16.0);
  static const TextStyle s16Accent = TextStyle(
    fontSize: 16.0,
    color: accentColor,
  );
  static const TextStyle s16BoldAccent = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: accentColor,
  );
  static const TextStyle s16Grey = TextStyle(
    fontSize: 16.0,
    color: Colors.grey,
  );

  static const TextStyle s14 = TextStyle(fontSize: 14.0);
  static const TextStyle s14Grey = TextStyle(
    fontSize: 14.0,
    color: Colors.grey,
  );
}

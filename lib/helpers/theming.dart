import 'package:flutter/material.dart';

extension PotionTextTheme on TextTheme {
  TextStyle? get bodyMediumSoft {
    return bodyMedium?.copyWith(
      fontWeight: FontWeight.w500,
      color: const Color.fromRGBO(55, 53, 48, 1),
    );
  }

  TextStyle? get bodyMediumSoft30 {
    return bodyMediumSoft?.copyWith(
      color: const Color.fromRGBO(114, 113, 110, 1),
    );
  }
}

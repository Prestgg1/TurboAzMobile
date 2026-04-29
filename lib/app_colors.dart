import 'package:flutter/material.dart';

class AppColors {
  /// Əsas qırmızı rəng (Colors.red[700]-ə uyğun)
  static const Color primary = Color(0xFFD32F2F);

  /// Açıq qırmızı arxa fon üçün (Colors.red[50]-yə uyğun)
  static const Color primaryLightBg = Color(0xFFFFEBEE);

  /// Əsas düymə və ya vurğulanan yerlər üçün adi qırmızı (Colors.red)
  static const Color red = Colors.red;

  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static Color get grey300 => Colors.grey[300]!;
  static Color get grey600 => Colors.grey[600]!;
}

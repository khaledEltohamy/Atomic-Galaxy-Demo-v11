// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    this.url,
    this.asset,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String? url;
  final String? asset;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    if (asset != null) {
      return Image.asset(asset!, width: width, height: height, fit: fit);
    }
    if (url != null) {
      return Image.network(url!, width: width, height: height, fit: fit);
    }
    return SizedBox(width: width, height: height);
  }
}

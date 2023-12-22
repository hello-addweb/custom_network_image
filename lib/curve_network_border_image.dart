import 'package:flutter/material.dart';

///
/// CurveNetworkBorderImage StatelessWidget Widget..
class CurveNetworkBorderImage extends StatelessWidget {
  const CurveNetworkBorderImage({
    super.key,
    this.borderColor,
    this.sizeFromRadius,
    this.url,
    this.padding,
    this.radius,
  });

  final Color? borderColor;
  final double? sizeFromRadius;
  final String? url;
  final double? padding;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius ?? 20); // Image border
    return Container(
      padding: EdgeInsets.all(padding ?? 3), // Border width
      decoration: BoxDecoration(
          color: borderColor ?? Colors.red, borderRadius: borderRadius),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: SizedBox.fromSize(
          size: Size.fromRadius(sizeFromRadius ?? 48), // Image radius
          child: Image.network(url ?? 'https://picsum.photos/250?image=9',
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}

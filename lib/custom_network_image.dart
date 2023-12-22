/// Documentation
///
/// custom_network_image library collection.
library custom_network_image;

export 'circular_network_image.dart';
import 'package:custom_network_image/circular_network_image.dart';
import 'package:custom_network_image/curve_network_image.dart';
import 'package:flutter/material.dart';
import 'circular_network_image_with_border.dart';
import 'curve_network_border_image.dart';

///
/// CustomNetworkImage main class..
class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key,
     this.sizeOfImage ,
    required this.url,
    this.curveValue,
    this.borderColor,
    this.sizeFromRadius,
    this.borderThickness,
    this.radius,
    this.isCircular = false,
    this.isCircularBorder= false,
    this.isCurve= false,
    this.isCurveBorder= false,
  });

  final double? sizeOfImage;
  final String? url;
  final double? curveValue;
  final Color? borderColor;
  final double? sizeFromRadius;
  final double? borderThickness;
  final double? radius;
  final bool? isCircular;
  final bool? isCircularBorder;
  final bool? isCurve;
  final bool? isCurveBorder;


  @override
  Widget build(BuildContext context) {
    return
      isCircular == true ?
    CircularNetworkImage(sizeOfImage: sizeOfImage, url: url,)
          : isCurve== true ?
    CurveNetworkImage(sizeOfImage: sizeOfImage, url: url,curveValue: curveValue,)
          : isCircularBorder== true ?
    CircularImageWithBorder(borderColor: borderColor, sizeFromRadius: sizeFromRadius, url:url , padding: borderThickness)
          : CurveNetworkBorderImage(
        borderColor: borderColor,
        sizeFromRadius: sizeFromRadius ,
        url:url,
        padding: borderThickness,
        radius:  radius,
      );
  }
}



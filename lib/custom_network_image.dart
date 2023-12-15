library custom_network_image;
export 'circular_network_image.dart';

import 'package:custom_network_image/circular_network_image.dart';
import 'package:custom_network_image/curve_network_image.dart';
import 'package:flutter/material.dart';

import 'circular_network_image_with_border.dart';
import 'curve_network_border_image.dart';

class CustomNetworkImage extends StatelessWidget {
   CustomNetworkImage({super.key, this.sizeOfImage ,
    this.url,
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

  double? sizeOfImage;
  String? url;
  double? curveValue;
  Color? borderColor;
  double? sizeFromRadius;
  double? borderThickness;
  double? radius;
  bool? isCircular = false;
  bool? isCircularBorder  = false;
  bool? isCurve  = false;
  bool? isCurveBorder  = false;


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



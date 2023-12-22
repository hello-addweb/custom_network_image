import 'package:flutter/material.dart';

///
/// CurveNetworkImage StatelessWidget Widget..
class CurveNetworkImage extends StatelessWidget {
  const CurveNetworkImage(
      {super.key, this.sizeOfImage, this.url, this.curveValue});
  final double? sizeOfImage;
  final String? url;
  final double? curveValue;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(curveValue ?? 10), // Image border
      child: SizedBox.fromSize(
        size: Size.fromRadius(sizeOfImage ?? 48), // Image radius
        child: Image.network(url ?? 'https://picsum.photos/250?image=9',
            fit: BoxFit.cover),
      ),
    );
  }
}

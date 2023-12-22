import 'package:flutter/material.dart';

///
/// CircularImageWithBorder StatelessWidget Widget..
class CircularImageWithBorder extends StatelessWidget {
  const  CircularImageWithBorder({super.key,
     this.borderColor,
     this.sizeFromRadius ,
     this.url,
     this.padding});

  final Color? borderColor;
  final double? sizeFromRadius;
  final String? url;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding ?? 3), // Border width
      decoration:  BoxDecoration(color: borderColor, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size:  Size.fromRadius(sizeFromRadius ?? 48), // Image radius
          child: Image.network(url ?? 'https://picsum.photos/250?image=9', fit: BoxFit.cover),
        ),
      ),
    );
  }
}

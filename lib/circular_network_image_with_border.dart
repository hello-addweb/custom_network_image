

import 'package:flutter/material.dart';

class CircularImageWithBorder extends StatelessWidget {
   CircularImageWithBorder({super.key,
     this.borderColor,
     this.sizeFromRadius ,
     this.url,
     this.padding});

  Color? borderColor;
  double? sizeFromRadius;
  String? url;
  double? padding;
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

import 'package:flutter/material.dart';

///
/// CircularNetworkImage StatelessWidget Widget..
class CircularNetworkImage extends StatelessWidget {
  const CircularNetworkImage({super.key, this.sizeOfImage, this.url});
  final double? sizeOfImage;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: sizeOfImage,
      // backgroundImage: AssetImage('assets/bottombar/loading.gif'),
      child: CircleAvatar(
        radius: sizeOfImage,
        backgroundColor: Colors.transparent,
        backgroundImage:
            NetworkImage(url ?? 'https://picsum.photos/250?image=9'),
      ),
    );
  }
}

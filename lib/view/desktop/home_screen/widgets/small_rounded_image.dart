import 'package:flutter/material.dart';

class SmallRoundedImage extends StatelessWidget {
  final String image;
  const SmallRoundedImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        image,
        height: size.height * 0.08,
        width: size.width * 0.05,
        fit: BoxFit.cover,
      ),
    );
  }
}

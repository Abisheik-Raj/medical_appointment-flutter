import "package:flutter/material.dart";

class SocialMediaComponent extends StatelessWidget {
  final String imagePath;
  const SocialMediaComponent({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(229, 232, 236, 1)),
            borderRadius: BorderRadius.circular(15)),
        height: 50,
        width: 90,
        child: Image(image: NetworkImage(imagePath)));
  }
}

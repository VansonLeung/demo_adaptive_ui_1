


import 'package:flutter/material.dart';

class ImageGalleryListView extends StatelessWidget {
  final List<String> imageUrls;

  const ImageGalleryListView({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Handle image tap event
            print('Tapped image: ${imageUrls[index]}');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
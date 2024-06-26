


import 'package:flutter/material.dart';

class ImageGalleryGridView extends StatelessWidget {
  final List<String> imageUrls;

  const ImageGalleryGridView({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3/4,
        ),
        scrollDirection: Axis.vertical,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              SizedBox.expand(
                child: GestureDetector(
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
                ),
              ),

            ],
          );
        }
    );
  }
}
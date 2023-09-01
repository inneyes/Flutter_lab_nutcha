import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://ak-d.tripcdn.com/images/1mi062215fbp8hp8120FB_W_640_0_R5_Q80.jpg?proc=source/trip',
    'https://mpics.mgronline.com/pics/Images/566000001121203.JPEG',
    'https://ak-d.tripcdn.com/images/1mi2p2215fbp8ewww2200_W_640_0_R5_Q80.jpg?proc=source/trip',
    'https://ak-d.tripcdn.com/images/1mi5b2234bifkkmy803A9_W_640_0_R5_Q80.jpg?proc=source/trip',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Gallery')),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Implement image viewer or navigate to full-size image
            },
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

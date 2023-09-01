import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Shop')),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 2, // Displaying two shop items for demonstration
        itemBuilder: (context, index) {
          // Replace these URLs with actual product image URLs
          String imageUrl = index == 0
              ? 'https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/alt-593ecb243e2ba-3814-345dbcf80631a29c1fec1d17f919669a@1x.jpg'
              : 'https://ychef.files.bbci.co.uk/1280x720/p091595d.jpg';

          return ListTile(
            leading: Image(
              image: NetworkImage(imageUrl),
              width: 60,
              height: 60,
            ),
            title: Text('cart ${index + 1}'),
            subtitle: Text('Price: \$0.5'), // Replace with actual price
            trailing: ElevatedButton(
              onPressed: () {
                // Implement product details or add-to-cart functionality
              },
              child: Text('Buy'),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Instagram')),
//         backgroundColor: Colors.black,
//       ),
//       body: Column(
//         children: [
//           // Top Stories
//           Container(
//             height: 100,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 10, // Number of stories
//               itemBuilder: (context, index) {
//                 return const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Color.fromARGB(255, 176, 168, 168),
//                     child: Icon(
//                       Icons.person,
//                       color: Colors.white,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),

//           //Post Feed
//           Expanded(
//             child: ListView.builder(
//               itemCount: 20, // Number of posts
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: const CircleAvatar(
//                     radius: 20,
//                     backgroundColor: Colors.black,
//                     child: Icon(
//                       Icons.person,
//                       color: Colors.white,
//                     ),
//                   ),
//                   title: Text('User $index'),
//                   subtitle: Text('This is post $index'),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Instagram')),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Top Stories
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Number of stories
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/A_black_image.jpg/640px-A_black_image.jpg'),
                      ),
                      SizedBox(height: 8),
                      Text('User $index'),
                    ],
                  ),
                );
              },
            ),
          ),
          // Post Feed
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Number of posts
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/A_black_image.jpg/640px-A_black_image.jpg'),
                        ),
                        title: Text('User $index'),
                      ),
                      SizedBox(height: 8),
                      Image.network(
                        'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.6435-9/83911343_10157966318317661_9029215596402704384_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=973b4a&_nc_ohc=jxwC04KGVC0AX-pUnVR&_nc_ht=scontent.fbkk5-4.fna&oh=00_AfA-yB9P-ocn6TkR2i8eQYc2E_7LRkDd2MGg4CFPXU1J4w&oe=651921DE', // Replace with actual image URL
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'chompoo pantip in rodfai park $index.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

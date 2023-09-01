import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Search')),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          // Search Results
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of search results
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(255, 11, 11, 11),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('User $index'),
                  subtitle: Text('User $index bio...'),
                  onTap: () {
                    // Handle tapping on a search result, e.g., navigate to user's profile
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

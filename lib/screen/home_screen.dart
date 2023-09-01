import 'package:flutter/material.dart';
import 'package:widget_basic/constant/myconstant.dart';
import 'bottomnavbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 205, 95, 181),
        title: Text(
          'flutter my app',
          style: MyConstant().h1Style(),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 24,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'HOME SCREEN',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
// Scaffold(
//       body: _children[_selectedIndex],
//       bottomNavigationBar: ,
//     );
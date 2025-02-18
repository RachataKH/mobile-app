import 'package:flutter/material.dart';
import 'package:x/screens/favorite_screen.dart';
import 'package:x/screens/for_you_screen.dart';
import 'package:x/screens/homepage_screen.dart';
import 'package:x/screens/menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // สร้างหน้าแต่ละแท็บ
  final List<Widget> _pages = [
    HomeScreen(), // หน้าแรก
    ForYouScreen(), // For U
    FavoriteScreen(), // Favorite
    MenuScreen(), // Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // แสดงหน้าที่เลือก
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // ป้องกันการซ่อนไอคอน
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green[700], // สีไอคอนที่เลือก
        unselectedItemColor: Colors.grey, // สีไอคอนที่ไม่ได้เลือก
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'อื่นๆ',
          ),
        ],
      ),
    );
  }
}

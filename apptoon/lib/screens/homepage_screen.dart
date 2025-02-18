import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final List<String> webtoonImages = [
    'assets/images/webtoon1.jpg',
    'assets/images/webtoon2.jpg',
    'assets/images/webtoon3.jpg',
  ];
  final List<String> webtoonImages2 = [
    'assets/images/apptoon1.jpg',
    'assets/images/apptoon2.jpg',
    'assets/images/apptoon3.jpg',
    'assets/images/apptoon4.jpg',
  ];

  @override
  void initState() {
    super.initState();
    startAutoSlide();
  }

  void startAutoSlide() {
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentIndex < webtoonImages.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("หมีไรอ่าน",
        style: GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"), // รูปโปรไฟล์
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // ไอคอนแว่นขยาย
            onPressed: () {
              // เพิ่มโค้ดที่ต้องการทำเมื่อกดปุ่ม
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250, // กำหนดความสูงของ PageView
            child: PageView.builder(
              controller: _pageController,
              itemCount: webtoonImages.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    webtoonImages[index],
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            "หมีมาแนะ",
            style: GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
            SizedBox(
              height: 200, // กำหนดความสูงของรายการ Webtoon
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: webtoonImages2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        webtoonImages2[index],
                        width: 130,
                        height: 200,
                        fit: BoxFit.cover,
                        ),
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

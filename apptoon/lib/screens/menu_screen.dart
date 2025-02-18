import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<MenuScreen> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          "อื่นๆ",
          style: GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SwitchListTile(
                title: Text(
                  "โหมดมืด",
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
                value: _darkMode,
                onChanged: (bool value) {
                  setState(() {
                    _darkMode = value;
                  });
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "การตั้งค่า",
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
                onTap: () {
                  // เพิ่มการทำงานเมื่อคลิก
                },
              ),
              ListTile(
                title: Text(
                  "แจ้งเตือน",
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
                onTap: () {
                  // เพิ่มการทำงานเมื่อคลิก
                },
              ),
              ListTile(
                title: Text(
                  "ช่วยเหลือ",
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
                onTap: () {
                  // เพิ่มการทำงานเมื่อคลิก
                },
              ),
              ListTile(
                title: Text(
                  "เกี่ยวกับแอพ",
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
                onTap: () {
                  // เพิ่มการทำงานเมื่อคลิก
                },
              ),
              ListTile(
                title: Text(
                  "ข้อกำหนดและเงื่อนไข",
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
                onTap: () {
                  // เพิ่มการทำงานเมื่อคลิก
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

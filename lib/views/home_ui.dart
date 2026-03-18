import 'package:fflutter_thai_hotline_app/views/about_ui.dart';
import 'package:fflutter_thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:fflutter_thai_hotline_app/views/sub_b_home_ui%20.dart';
import 'package:fflutter_thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:fflutter_thai_hotline_app/views/sub_d_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  // ย้ายตัวแปรมาไว้ใน State
  int _barItemIndex = 0; // เริ่มต้นที่หน้า 0 (หมวดการเดินทาง)

  final List<Widget> _showUI = [
    const SubAHomeUi(),
    const SubBHomeUi(),
    const SubCHomeUi(),
    const SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ใช้ flexibleSpace สำหรับทำสีไล่ระดับ
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 138, 72, 15),
                Color.fromARGB(255, 128, 79, 22),
                Color.fromARGB(255, 208, 136, 36),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: const Text(
          'สายด่วน THAILAND',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUi()),
              );
            },
            icon: const Icon(Icons.info_outline, color: Colors.white),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (paramValue) {
          setState(() {
            _barItemIndex = paramValue;
          });
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor:
            const Color.fromARGB(255, 138, 72, 15), // สีตอนที่เมนูถูกเลือก
        unselectedItemColor: Colors.grey, // สีตอนที่เมนูไม่ได้เลือก
        currentIndex: _barItemIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_amber_rounded),
            label: 'อุบัติเหตุ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      body: _showUI[_barItemIndex],
    );
  }
}

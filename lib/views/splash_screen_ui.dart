import 'package:fflutter_thai_hotline_app/views/home_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeUi()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // ขยายกว้างเต็มจอ
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // เริ่มต้นจากด้านบน
            end: Alignment.bottomCenter, // จบที่ด้านล่าง
            colors: [
              Color.fromARGB(255, 100, 50, 10),
              Color.fromARGB(255, 138, 72, 15),
              Color.fromARGB(255, 133, 75, 18),
              Color.fromARGB(255, 128, 79, 22),
              Color.fromARGB(255, 168, 107, 29),
              Color.fromARGB(255, 208, 136, 36),
            ],
          ),
        ),

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // จัดให้อยู่กึ่งกลางแนวตั้ง
          children: [
            Image.asset(
              'assets/images/LogoThaiHotLineApp.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'ThaiHotLineApp',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'แอพโทรสายด่วน',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

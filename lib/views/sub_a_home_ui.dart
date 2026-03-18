import 'package:fflutter_thai_hotline_app/models/hotline_model.dart';
import 'package:fflutter_thai_hotline_app/views/thai_hotline_detail.dart';
import 'package:flutter/material.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // ส่วนหัว
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Column(
              children: [
                Text(
                  'สายด่วน',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'การเดินทาง',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // กรอบรูปภาพหมวดหมู่หลัก
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            // ไอคอนหมวดการเดินทาง
            child:
                const Icon(Icons.directions_car, size: 50, color: Colors.grey),
          ),

          const SizedBox(height: 20),

          // ส่วนรายการเบอร์โทร
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              // ดึงข้อมูล travelList จาก hotline_model.dart
              itemCount: travelList.length,
              itemBuilder: (context, index) {
                final travel = travelList[index];

                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    leading: ClipOval(
                      child: Image.asset(
                        'assets/images/${travel.imageName}',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.image_not_supported, size: 50),
                      ),
                    ),
                    title: Text(
                      travel.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      travel.phoneDisplay,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.phone,
                          color: Colors.green, size: 30),
                      onPressed: () {
                        // เรียกใช้ฟังก์ชันโทรออกจาก thai_hotline_detail.dart
                        ThaiHotlineDetail.makePhoneCall(
                            context, travel.phoneDisplay);
                      },
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

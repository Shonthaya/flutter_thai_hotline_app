import 'package:fflutter_thai_hotline_app/models/hotline_model.dart';
import 'package:fflutter_thai_hotline_app/views/thai_hotline_detail.dart';
import 'package:flutter/material.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Column(
              children: [
                Text(
                  'สายด่วน',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ธนาคาร',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
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
            child:
                const Icon(Icons.account_balance, size: 50, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              // เรียกใช้ bankList ที่ import มาจาก model
              itemCount: bankList.length,
              itemBuilder: (context, index) {
                final bank = bankList[index];

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
                        'assets/images/${bank.imageName}',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.image_not_supported, size: 50),
                      ),
                    ),
                    title: Text(
                      bank.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      bank.phoneDisplay,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.phone,
                          color: Colors.green, size: 30),
                      onPressed: () {
                        // เรียกใช้ฟังก์ชันโทรออกจากไฟล์ thai_hotline_detail.dart
                        ThaiHotlineDetail.makePhoneCall(
                            context, bank.phoneDisplay);
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

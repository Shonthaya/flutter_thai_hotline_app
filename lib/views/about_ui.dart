import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // ปุ่มลูกศรย้อนกลับไปหน้า Home
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

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
      ),
      // ใช้ SingleChildScrollView เพื่อป้องกันปัญหาหน้าจอทะลุ
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              // ชื่อมหาวิทยาลัย
              const Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 30),

              // โลโก้มหาวิทยาลัย
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Logosau-02.png/250px-Logosau-02.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 15),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Divider(color: Colors.grey[400]),
              ),

              const SizedBox(height: 20),

              const Text(
                'ผู้จัดทำ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const SizedBox(height: 20),

              //  รูป
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/yellow.jpg',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                    // ใส่ errorBuilder ไว้กันแอปพังกรณีหารูปไม่เจอ
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 140,
                      height: 140,
                      color: Colors.grey[300],
                      child: const Icon(Icons.person,
                          size: 80, color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ข้อมูลส่วนตัว
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        _buildInfoRow('รหัสนักศึกษา :', '6752410004'),
                        const Divider(),
                        _buildInfoRow('ชื่อ-สกุล :', 'นายสนธยา สายวรรณะ'),
                        const Divider(),
                        _buildInfoRow(
                            'อีเมลนักศึกษา :', 's6752410004@sau.ac.th'),
                        const Divider(),
                        _buildInfoRow('คณะ :', 'ศิลปศาสตร์และวิทยาศาสตร์'),
                        const Divider(),
                        _buildInfoRow('สาขา :', 'DTI'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // สร้าง Widget ย่อยเพื่อให้โค้ดส่วนแสดงข้อมูลสั้นและเป็นระเบียบ
  Widget _buildInfoRow(String title, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              detail,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

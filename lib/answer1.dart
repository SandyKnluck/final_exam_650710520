import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('โปรไฟล์ผู้ใช้'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png'),
                    radius: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'ชื่อผู้ใช้: John Doe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text(
              'อีเมลล์: johndoe@example.com',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                leading: const Icon(Icons.settings, color: Colors.blue),
                title: const Text("การตั้งค่า"),
                onTap: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                leading: const Icon(Icons.lock, color: Colors.blue),
                title: const Text("การเปลี่ยนรหัสผ่าน"),
                onTap: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                leading: const Icon(Icons.privacy_tip, color: Colors.blue),
                title: const Text("ความเป็นส่วนตัว"),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("แก้ไขโปรไฟล์")),
                  );
                },
                child: const Text('แก้ไขโปรไฟล์')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("ออกจากระบบ")),
                  );
                },
                child: const Text('ออกจากระบบ'))
          ],
        ));
  }
}

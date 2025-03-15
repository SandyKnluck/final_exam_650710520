import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Profile"),
          backgroundColor: const Color.fromARGB(255, 255, 209, 224),
        ),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/12/anya-forger-heh.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'Kanhokluck Nimnaul',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '650710520',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '	Computer Science Major',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, size: 16, color: Colors.blue),
                  SizedBox(width: 5),
                  Text('nimnaul_k@silpakorn.edu'),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, size: 16, color: Colors.green),
                  SizedBox(width: 5),
                  Text('0968815526'),
                ],
              ),
            ],
          ),
        )));
  }
}

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
             
            ],
          ),
        )));
  }
}

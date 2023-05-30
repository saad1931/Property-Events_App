// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(child: Text("Profile Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}
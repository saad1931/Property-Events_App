import 'package:flutter/material.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(child: Text("Add Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),)
        ],
      ),
    );
  }
}
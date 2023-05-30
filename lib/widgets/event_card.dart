// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
class EventCard extends StatelessWidget {
  String imgpath;
  String name;

  EventCard({
    required this.imgpath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12)
          ),
          height: 200,
          width: 150,
          child: Image.asset(
            imgpath,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}


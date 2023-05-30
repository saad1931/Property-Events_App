// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PropertyAdd extends StatelessWidget {
  String imgpath;
  String name;
  String sqft;
  String location;
  String description;
  PropertyAdd(
      {super.key,
      required this.imgpath,
      required this.name,
      required this.sqft,
      required this.location,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              imgpath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                sqft,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
           const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              location,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
          )
        ],
      ),
    );
  }
}

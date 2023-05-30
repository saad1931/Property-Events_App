// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PropertyDetail extends StatelessWidget {
  String img1;
  String img2;
  String img3;
  String img4;
  String name;
  String sqft;
  String location;
  String description;
  PropertyDetail({super.key,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
    required this.name,
    required this.sqft,
    required this.location,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Stack(children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 280,
                    left: 110,
                    child: Image.asset("assets/images/o2.png")),
                Positioned(
                    top: 280,
                    left: 130,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 150,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 170,
                    child: Image.asset("assets/images/o1.png")),
              ]),
      
              //2nd Image of Slider
              Stack(children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 280,
                    left: 110,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 130,
                    child: Image.asset("assets/images/o2.png")),
                Positioned(
                    top: 280,
                    left: 150,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 170,
                    child: Image.asset("assets/images/o1.png")),
              ]),
      
              //3rd Image of Slider
              Stack(children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(img3),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 280,
                    left: 110,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 130,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 150,
                    child: Image.asset("assets/images/o2.png")),
                Positioned(
                    top: 280,
                    left: 170,
                    child: Image.asset("assets/images/o1.png")),
              ]),
      
              //4th Image of Slider
              Stack(children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(img4),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 280,
                    left: 110,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 130,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 150,
                    child: Image.asset("assets/images/o1.png")),
                Positioned(
                    top: 280,
                    left: 170,
                    child: Image.asset("assets/images/o2.png")),
              ])
            ],
      
            //Slider Container properties
            options: CarouselOptions(
              height: 320.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
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
              ),
               const SizedBox(height: 10,),
           
        ]),
      ),
    );
  }
}

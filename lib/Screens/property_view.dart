// ignore_for_file: use_key_in_widget_constructors

import 'package:elevator_flings/Screens/main_screen.dart';
import 'package:elevator_flings/widgets/event_card.dart';
import 'package:elevator_flings/widgets/property_detail.dart';
import 'package:flutter/material.dart';

class PropertyView extends StatelessWidget {
  const PropertyView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Property Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PropertyDetail(
              img1: "assets/images/h4.jpg",
              img2: "assets/images/h5.jpg",
              img3: "assets/images/h6.jpg",
              img4: "assets/images/h7.jpg",
              name: "House NO-23",
              sqft: "1200 SQFT",
              location: "📌  Austria Mega-Block street 5",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            ),
            const Divider(color: Colors.grey,height: 1,),
            // const SizedBox(height: 5),
            const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Past Events",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    EventCard(
                      imgpath: "assets/images/e1.jpg",
                      name: "Lorem Ipsum",
                    ),
                    const SizedBox(width: 10),
                    EventCard(
                      imgpath: "assets/images/e2.jpg",
                      name: "Lorem Ipsum",
                    ),
                    const SizedBox(width: 10),
                    EventCard(
                      imgpath: "assets/images/e3.jpg",
                      name: "Lorem Ipsum",
                    ),
                    const SizedBox(width: 10),
                    EventCard(
                      imgpath: "assets/images/e4.jpg",
                      name: "Lorem Ipsum",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

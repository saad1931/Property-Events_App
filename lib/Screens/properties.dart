import 'package:elevator_flings/Screens/property_view.dart';
import 'package:elevator_flings/widgets/property_add.dart';
import 'package:flutter/material.dart';

class Properties extends StatelessWidget {
  const Properties({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const PropertyView()),
              );
              },
              child: PropertyAdd(
                imgpath: "assets/images/h4.jpg", 
                name: "Delta House", 
                sqft: "1200 SQFT",
                location: "📌  London E-Tower street 4", 
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                ),
            ),

             GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const PropertyView()),
              );
              },
               child: PropertyAdd(
                imgpath: "assets/images/h5.jpg", 
                name: "House NO-23", 
                sqft: "1200 SQFT", 
                location: "📌  Austria Mega-Block street 5", 
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                ),
             ),

              GestureDetector(
                onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const PropertyView()),
              );
              },
                child: PropertyAdd(
                imgpath: "assets/images/h6.jpg", 
                name: "hOUSE NO-55", 
                sqft: "1200 SQFT",
                location: "📌  South Wales, street 99",  
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                ),
              ),
              GestureDetector(
                onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const PropertyView()),
              );
              },
                child: PropertyAdd(
                imgpath: "assets/images/h4.jpg", 
                name: "Delta House", 
                sqft: "1200 SQFT",
                location: "📌  London E-Tower street 4", 
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                ),
              ),

             GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const PropertyView()),
              );
              },
               child: PropertyAdd(
                imgpath: "assets/images/h5.jpg", 
                name: "House NO-23", 
                sqft: "1200 SQFT", 
                location: "📌  Austria Mega-Block street 5", 
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                ),
             ),

              GestureDetector(
                onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const PropertyView()),
              );
              },
                child: PropertyAdd(
                imgpath: "assets/images/h6.jpg", 
                name: "hOUSE NO-55", 
                sqft: "1200 SQFT",
                location: "📌  South Wales, street 99",  
                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                ),
              ),   
          ],
        ),
      ),
    );
  }
}
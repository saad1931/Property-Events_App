import 'package:elevator_flings/widgets/event_add.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.04),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: SizedBox(
                height: screenHeight * 0.06,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Past Events",
                    style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
              EventAdd(
              imgpath: "assets/images/e1.jpg", 
              name: "Lorem Ipsum", 
              category: "Categiry: Lorep Ipsum",
              location: "📌  London E-Tower street 4", 
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
              EventAdd(
              imgpath: "assets/images/e2.jpg", 
              name: "Lorem Ipsum", 
              category: "Categiry: Lorep Ipsum",
              location: "📌  London E-Tower street 4", 
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
              EventAdd(
              imgpath: "assets/images/e3.jpg", 
              name: "Lorem Ipsum", 
              category: "Category: Lorep Ipsum",
              location: "📌  London E-Tower street 4", 
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
              EventAdd(
              imgpath: "assets/images/e2.jpg", 
              name: "Lorem Ipsum", 
              category: "Category: Lorep Ipsum",
              location: "📌  London E-Tower street 4", 
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
              EventAdd(
              imgpath: "assets/images/e3.jpg", 
              name: "Lorem Ipsum", 
              category: "Category: Lorep Ipsum",
              location: "📌  London E-Tower street 4", 
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
              EventAdd(
              imgpath: "assets/images/e4.jpg", 
              name: "Lorem Ipsum", 
              category: "Category: Lorep Ipsum",
              location: "📌  London E-Tower street 4", 
              description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:elevator_flings/Screens/login.dart';
import 'package:elevator_flings/Screens/main_screen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;


    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "OTP Verification",
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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
              MaterialPageRoute(builder: (context) =>const Login()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Center(
               child: Image.asset(
                "assets/images/logo3.png",
                height: screenHeight * 0.3,
                width: screenWidth * 0.8,
                ),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOtpBox(),
                const SizedBox(width: 0.2,),
                _buildOtpBox(),
                const SizedBox(width: 0.2,),
                _buildOtpBox(),
                const SizedBox(width: 0.2,),
                _buildOtpBox(),
                const SizedBox(width: 0.2,),
                _buildOtpBox(),
                const SizedBox(width: 0.2,),
                _buildOtpBox(),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
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
                  onPressed: () {
                     Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const MainScreen()));
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            const Center(child:  Text("00:30",style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: screenHeight * 0.3),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Didn't receive the code?"),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      " Resend",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink,decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

  Widget _buildOtpBox() {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

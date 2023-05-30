// ignore_for_file: file_names

import 'package:elevator_flings/Screens/login.dart';
import 'package:elevator_flings/Screens/otp_screen.dart';
import 'package:elevator_flings/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController businessController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController cpassController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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
              child: Stack(
                     children: [
                              const CircleAvatar(
                                      radius: 64,
                                      backgroundImage:
                                          AssetImage("assets/images/upload.png"),
                                    ),
                              Positioned(
                                  bottom: -10,
                                  left: 80,
                                  child: IconButton(
                                    onPressed: (){},
                                    icon: const Icon(Icons.add_a_photo),
                                  ))
                            ],
                          ),
            ),
            SizedBox(height: screenHeight * 0.02),
            const Center(child:  Text("Upload Business Logo",style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: screenHeight * 0.02),
            TextFieldWidget(
              preIcon: const Icon(Icons.person),
              labelTextt: "Name",
              textEditingController: nameController,
              hintTextt: "Enter Your Name",
              textInputType: TextInputType.text,
            ),
            SizedBox(height: screenHeight * 0.02),
            TextFieldWidget(
              preIcon: const Icon(Icons.mail),
              labelTextt: "Email",
              textEditingController: emailController,
              hintTextt: "Enter Your Email",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: screenHeight * 0.02),
            TextFieldWidget(
              preIcon: const Icon(Icons.business),
              labelTextt: "Business Name",
              textEditingController: businessController,
              hintTextt: "Enter Business Name",
              textInputType: TextInputType.text,
            ),
            SizedBox(height: screenHeight * 0.02),
            TextFieldWidget(
              preIcon: const Icon(Icons.phone),
              labelTextt: "Phone Number",
              textEditingController: phoneController,
              hintTextt: "Enter Phone Number",
              textInputType: TextInputType.number,
            ),
            SizedBox(height: screenHeight * 0.02),
            TextFieldWidget(
              preIcon: const Icon(Icons.password),
              labelTextt: "Password",
              textEditingController: passController,
              hintTextt: "Enter Your Password",
              textInputType: TextInputType.text,
              isPass: true,
            ),
            SizedBox(height: screenHeight * 0.02),
            TextFieldWidget(
              preIcon: const Icon(Icons.confirmation_num),
              labelTextt: "Confirm Password",
              textEditingController: cpassController,
              hintTextt: "Enter Your Confirm Password",
              textInputType: TextInputType.text,
              isPass: true,
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
                            builder: (context) =>const OtpScreen()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Already have an account?"),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const Login()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "Login",
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

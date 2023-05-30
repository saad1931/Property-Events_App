import 'package:elevator_flings/Screens/Signup.dart';
import 'package:elevator_flings/Screens/otp_screen.dart';
import 'package:elevator_flings/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo3.png",
              height: screenHeight * 0.3,
              width: screenWidth * 0.8,
            ),
            TextFieldWidget(
              preIcon: const Icon(Icons.mail),
              labelTextt: "Email",
              textEditingController: emailController,
              hintTextt: "Enter Your Email",
              textInputType: TextInputType.emailAddress,
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
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
              ),
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
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Don't have an account?"),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const SignUp()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "Register Now",
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

import 'package:cars_app/views/authentication/screens/option_page.dart';
import 'package:cars_app/views/authentication/widgets/custom_button.dart';
import 'package:cars_app/views/authentication/widgets/custom_text_fields.dart';
import 'package:cars_app/views/home/home.dart';
import 'package:cars_app/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 80), // Add some space to push the fields down
                    CustomTextFields(
                      prefixIcon: Icon(Icons.person, color: Colors.grey),
                      hintText: 'Name',
                      controller: TextEditingController(),
                    ),
                    SizedBox(height: 20),
                    CustomTextFields(
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      hintText: 'Password',
                      controller: TextEditingController(),
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      onTap: () {},
                      btnColor: AppColors.btnColors1,
                      btnTextColor: Colors.white,
                      fontSize: 20,
                      btnText: 'Login',
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      child: Text('continue as guest'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(Icons.arrow_circle_left_outlined, size: 30),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OptionPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

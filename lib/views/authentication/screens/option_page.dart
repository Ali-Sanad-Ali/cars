import 'package:cars_app/views/authentication/screens/login.dart';
import 'package:cars_app/views/authentication/screens/registeration.dart';
import 'package:cars_app/views/authentication/widgets/custom_button.dart';
import 'package:cars_app/views/home/home.dart';
import 'package:cars_app/utils/colors.dart';
import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                'assets/car.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'APP NAME',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 330,
              child: Column(
                children: [
                  CustomButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    btnText: 'Login',
                    btnTextColor: Colors.white,
                    fontSize: 18,
                    btnColor: AppColors.btnColors1,
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registeration()));
                    },
                    btnText: 'Create new account',
                    btnTextColor: Colors.white,
                    fontSize: 18,
                    btnColor:
                        AppColors.btnColors1, // Use your custom color here
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    child: Text('Continue as a guest'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

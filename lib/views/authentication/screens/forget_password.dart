import 'package:cars_app/views/authentication/screens/login.dart';
import 'package:cars_app/views/authentication/widgets/custom_button.dart';
import 'package:cars_app/views/authentication/widgets/custom_text_fields.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ForgetPassword'),
            SizedBox(height: 20),
            CustomTextFields(controller: TextEditingController()),
            SizedBox(height: 20),
            CustomButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                btnText: 'Send OTP',
                btnTextColor: Colors.red,
                fontSize: 20,
                btnColor: Color.fromARGB(255, 67, 47, 47))
          ],
        ),
      ),
    );
  }
}
